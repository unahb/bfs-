/***********************************************************************************
  Implementing Breadth first search on CUDA using algorithm given in HiPC'07
  paper "Accelerating Large Graph Algorithms on the GPU using CUDA"

  Copyright (c) 2008 International Institute of Information Technology - Hyderabad. 
  All rights reserved.

  Permission to use, copy, modify and distribute this software and its documentation for 
  educational purpose is hereby granted without fee, provided that the above copyright 
  notice and this permission notice appear in all copies of this software and that you do 
  not sell the software.

  THE SOFTWARE IS PROVIDED "AS IS" AND WITHOUT WARRANTY OF ANY KIND,EXPRESS, IMPLIED OR 
  OTHERWISE.

  Created by Pawan Harish.
 ************************************************************************************/
#include <CL/sycl.hpp>
#include <dpct/dpct.hpp>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#ifdef TIMING
#include "timing.h"
#endif

#define MAX_THREADS_PER_BLOCK 512

int no_of_nodes;
int edge_list_size;
FILE *fp;

#ifdef TIMING
struct timeval tv;
struct timeval tv_total_start, tv_total_end;
struct timeval tv_h2d_start, tv_h2d_end;
struct timeval tv_d2h_start, tv_d2h_end;
struct timeval tv_kernel_start, tv_kernel_end;
struct timeval tv_mem_alloc_start, tv_mem_alloc_end;
struct timeval tv_close_start, tv_close_end;
float init_time = 0, mem_alloc_time = 0, h2d_time = 0, kernel_time = 0,
      d2h_time = 0, close_time = 0, total_time = 0;
#endif

//Structure to hold a node information
struct Node
{
	int starting;
	int no_of_edges;
};

#include "kernel.dp.cpp"
#include "kernel2.dp.cpp"

void BFSGraph(int argc, char** argv);

////////////////////////////////////////////////////////////////////////////////
// Main Program
////////////////////////////////////////////////////////////////////////////////
int main( int argc, char** argv) 
{
	no_of_nodes=0;
	edge_list_size=0;
	BFSGraph( argc, argv);
}

void Usage(int argc, char**argv){

fprintf(stderr,"Usage: %s <input_file>\n", argv[0]);

}
////////////////////////////////////////////////////////////////////////////////
//Apply BFS on a Graph using CUDA
////////////////////////////////////////////////////////////////////////////////
void BFSGraph( int argc, char** argv)
{
 dpct::device_ext &dev_ct1 = dpct::get_current_device();
 sycl::queue &q_ct1 = dev_ct1.default_queue();

    char *input_f;
	if(argc!=2){
	Usage(argc, argv);
	exit(0);
	}

	input_f = argv[1];
	printf("Reading File\n");
	//Read in Graph from a file
	fp = fopen(input_f,"r");
	if(!fp)
	{
		printf("Error Reading graph file\n");
		return;
	}

	int source = 0;

	fscanf(fp,"%d",&no_of_nodes);

	int num_of_blocks = 1;
	int num_of_threads_per_block = no_of_nodes;

	//Make execution Parameters according to the number of nodes
	//Distribute threads across multiple Blocks if necessary
	if(no_of_nodes>MAX_THREADS_PER_BLOCK)
	{
		num_of_blocks = (int)ceil(no_of_nodes/(double)MAX_THREADS_PER_BLOCK); 
		num_of_threads_per_block = MAX_THREADS_PER_BLOCK; 
	}

	// allocate host memory
	Node* h_graph_nodes = (Node*) malloc(sizeof(Node)*no_of_nodes);
	bool *h_graph_mask = (bool*) malloc(sizeof(bool)*no_of_nodes);
	bool *h_updating_graph_mask = (bool*) malloc(sizeof(bool)*no_of_nodes);
	bool *h_graph_visited = (bool*) malloc(sizeof(bool)*no_of_nodes);

	int start, edgeno;   
	// initalize the memory
	for( unsigned int i = 0; i < no_of_nodes; i++) 
	{
		fscanf(fp,"%d %d",&start,&edgeno);
		h_graph_nodes[i].starting = start;
		h_graph_nodes[i].no_of_edges = edgeno;
		h_graph_mask[i]=false;
		h_updating_graph_mask[i]=false;
		h_graph_visited[i]=false;
	}

	//read the source node from the file
	fscanf(fp,"%d",&source);
	source=0;

	//set the source node as true in the mask
	h_graph_mask[source]=true;
	h_graph_visited[source]=true;

	fscanf(fp,"%d",&edge_list_size);

	int id,cost;
	int* h_graph_edges = (int*) malloc(sizeof(int)*edge_list_size);
	for(int i=0; i < edge_list_size ; i++)
	{
		fscanf(fp,"%d",&id);
		fscanf(fp,"%d",&cost);
		h_graph_edges[i] = id;
	}

	if(fp)
		fclose(fp);    

	printf("Read File\n");

#ifdef  TIMING
    gettimeofday(&tv_total_start, NULL);
#endif
	//Copy the Node list to device memory
	Node* d_graph_nodes;
        d_graph_nodes = sycl::malloc_device<Node>(no_of_nodes, q_ct1);
        q_ct1.memcpy(d_graph_nodes, h_graph_nodes, sizeof(Node) * no_of_nodes).wait();

        //Copy the Edge List to device Memory
	int* d_graph_edges;
        d_graph_edges = sycl::malloc_device<int>(edge_list_size, q_ct1);
        q_ct1.memcpy(d_graph_edges, h_graph_edges, sizeof(int) * edge_list_size)
            .wait();

        //Copy the Mask to device memory
	bool* d_graph_mask;
        d_graph_mask = sycl::malloc_device<bool>(no_of_nodes, q_ct1);
        q_ct1.memcpy(d_graph_mask, h_graph_mask, sizeof(bool) * no_of_nodes).wait();

        bool* d_updating_graph_mask;
        d_updating_graph_mask = sycl::malloc_device<bool>(no_of_nodes, q_ct1);
        q_ct1
            .memcpy(d_updating_graph_mask, h_updating_graph_mask,
                    sizeof(bool) * no_of_nodes)
            .wait();

        //Copy the Visited nodes array to device memory
	bool* d_graph_visited;
        d_graph_visited = sycl::malloc_device<bool>(no_of_nodes, q_ct1);
        q_ct1
            .memcpy(d_graph_visited, h_graph_visited,
                    sizeof(bool) * no_of_nodes)
            .wait();

        // allocate mem for the result on host side
	int* h_cost = (int*) malloc( sizeof(int)*no_of_nodes);
	for(int i=0;i<no_of_nodes;i++)
		h_cost[i]=-1;
	h_cost[source]=0;
	
	// allocate device memory for result
	int* d_cost;
        d_cost = sycl::malloc_device<int>(no_of_nodes, q_ct1);
        q_ct1.memcpy(d_cost, h_cost, sizeof(int) * no_of_nodes).wait();

        //make a bool to check if the execution is over
	bool *d_over;
        d_over = sycl::malloc_device<bool>(1, q_ct1);
#ifdef  TIMING
    gettimeofday(&tv_mem_alloc_end, NULL);
    tvsub(&tv_mem_alloc_end, &tv_total_start, &tv);
    h2d_time = tv.tv_sec * 1000.0 + (float) tv.tv_usec / 1000.0;
#endif

	printf("Copied Everything to GPU memory\n");

	// setup execution parameters
        sycl::range<3> grid(1, 1, num_of_blocks);
        sycl::range<3> threads(1, 1, num_of_threads_per_block);

        int k=0;
	printf("Start traversing the tree\n");
	bool stop;
	//Call the Kernel untill all the elements of Frontier are not false
	do
	{
		//if no thread changes this value then the loop stops
		stop=false;
#ifdef  TIMING
		gettimeofday(&tv_h2d_start, NULL);
#endif
                q_ct1.memcpy(d_over, &stop, sizeof(bool)).wait();
#ifdef  TIMING
		gettimeofday(&tv_h2d_end, NULL);
		tvsub(&tv_h2d_end, &tv_h2d_start, &tv);
		h2d_time += tv.tv_sec * 1000.0 + (float) tv.tv_usec / 1000.0;
#endif

		// Kernel<<< grid, threads, 0 >>>( d_graph_nodes, d_graph_edges, d_graph_mask, d_updating_graph_mask, d_graph_visited, d_cost, no_of_nodes);
		void* args[] = {&d_graph_nodes, &d_graph_edges, &d_graph_mask, &d_updating_graph_mask, &d_graph_visited, &d_cost, &no_of_nodes};
                /*
                DPCT1049:0: The workgroup size passed to the SYCL kernel may
                exceed the limit. To get the device limit, query
                info::device::max_work_group_size. Adjust the workgroup size if
                needed.
                */
    q_ct1.submit([&](sycl::handler &cgh) {
      auto g_graph_nodes_ct0 = *(Node **)args[0];
      auto g_graph_edges_ct1 = *(int **)args[1];
      auto g_graph_mask_ct2 = *(bool **)args[2];
      auto g_updating_graph_mask_ct3 = *(bool **)args[3];
      auto g_graph_visited_ct4 = *(bool **)args[4];
      auto g_cost_ct5 = *(int **)args[5];
      auto no_of_nodes_ct6 = *(int *)args[6];

      cgh.parallel_for(sycl::nd_range<3>(grid * threads, threads),
                       [=](sycl::nd_item<3> item_ct1) {
                         Kernel(g_graph_nodes_ct0, g_graph_edges_ct1,
                                g_graph_mask_ct2, g_updating_graph_mask_ct3,
                                g_graph_visited_ct4, g_cost_ct5,
                                no_of_nodes_ct6, item_ct1);
                       });
    });

                // check if kernel execution generated and error

		// Kernel2<<< grid, threads, 0 >>>( d_graph_mask, d_updating_graph_mask, d_graph_visited, d_over, no_of_nodes);
		void* args2[] = {&d_graph_mask, &d_updating_graph_mask, &d_graph_visited, &d_over, &no_of_nodes};
                /*
                DPCT1049:1: The workgroup size passed to the SYCL kernel may
                exceed the limit. To get the device limit, query
                info::device::max_work_group_size. Adjust the workgroup size if
                needed.
                */
    q_ct1.submit([&](sycl::handler &cgh) {
      auto g_graph_mask_ct0 = *(bool **)args[0];
      auto g_updating_graph_mask_ct1 = *(bool **)args[1];
      auto g_graph_visited_ct2 = *(bool **)args[2];
      auto g_over_ct3 = *(bool **)args[3];
      auto no_of_nodes_ct4 = *(int *)args[4];

      cgh.parallel_for(sycl::nd_range<3>(grid * threads, threads),
                       [=](sycl::nd_item<3> item_ct1) {
                         Kernel2(g_graph_mask_ct0, g_updating_graph_mask_ct1,
                                 g_graph_visited_ct2, g_over_ct3,
                                 no_of_nodes_ct4, item_ct1);
                       });
    });

                // check if kernel execution generated and error

#ifdef  TIMING
		cudaDeviceSynchronize();
		gettimeofday(&tv_kernel_end, NULL);
		tvsub(&tv_kernel_end, &tv_h2d_end, &tv);
		kernel_time += tv.tv_sec * 1000.0 + (float) tv.tv_usec / 1000.0;
#endif

                q_ct1.memcpy(&stop, d_over, sizeof(bool)).wait();
#ifdef  TIMING
		gettimeofday(&tv_d2h_end, NULL);
		tvsub(&tv_d2h_end, &tv_kernel_end, &tv);
		d2h_time += tv.tv_sec * 1000.0 + (float) tv.tv_usec / 1000.0;
#endif

		k++;
	}
	while(stop);


	printf("Kernel Executed %d times\n",k);

	// copy result from device to host
#ifdef  TIMING
	gettimeofday(&tv_d2h_start, NULL);
#endif
        q_ct1.memcpy(h_cost, d_cost, sizeof(int) * no_of_nodes).wait();
#ifdef  TIMING
	gettimeofday(&tv_d2h_end, NULL);
	tvsub(&tv_d2h_end, &tv_d2h_start, &tv);
	d2h_time += tv.tv_sec * 1000.0 + (float) tv.tv_usec / 1000.0;
#endif

	//Store the result into a file
	FILE *fpo = fopen("result.txt","w");
	for(int i=0;i<no_of_nodes;i++)
		fprintf(fpo,"%d) cost:%d\n",i,h_cost[i]);
	fclose(fpo);
	printf("Result stored in result.txt\n");


	// cleanup memory
	free( h_graph_nodes);
	free( h_graph_edges);
	free( h_graph_mask);
	free( h_updating_graph_mask);
	free( h_graph_visited);
	free( h_cost);
#ifdef  TIMING
    gettimeofday(&tv_close_start, NULL);
#endif
        sycl::free(d_graph_nodes, q_ct1);
        sycl::free(d_graph_edges, q_ct1);
        sycl::free(d_graph_mask, q_ct1);
        sycl::free(d_updating_graph_mask, q_ct1);
        sycl::free(d_graph_visited, q_ct1);
        sycl::free(d_cost, q_ct1);

#ifdef  TIMING
	gettimeofday(&tv_close_end, NULL);
	tvsub(&tv_close_end, &tv_close_start, &tv);
	close_time = tv.tv_sec * 1000.0 + (float) tv.tv_usec / 1000.0;
	tvsub(&tv_close_end, &tv_total_start, &tv);
	total_time = tv.tv_sec * 1000.0 + (float) tv.tv_usec / 1000.0;

	printf("Init: %f\n", init_time);
	printf("MemAlloc: %f\n", mem_alloc_time);
	printf("HtoD: %f\n", h2d_time);
	printf("Exec: %f\n", kernel_time);
	printf("DtoH: %f\n", d2h_time);
	printf("Close: %f\n", close_time);
	printf("Total: %f\n", total_time);
#endif
}
