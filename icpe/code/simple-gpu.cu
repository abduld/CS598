__device__ int ave(int a, int b)
{
   return (a+b)/2;
}

__global__ void simple(int *data)
{
   int tid = blockIdx.x * blockDim.x + threadIdx.x;
   data[tid] = ave(tid, tid);
}


