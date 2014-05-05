#pragma version(1)
#pragma rs java_package_name(com.cs598sva.rsbench.sgemm)

int32_t blockDim;

static int ave(int a, int b) {
  return (a+b)/2;
}

int32_t __attribute__((kernel)) root(uint32_t x, uint32_t y) {
    int tid = x*blockDim+y;
    int average = ave(tid, tid);
    return average;
}

