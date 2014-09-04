int ave(int a, int b) {
  return (a+b)/2;
}

__kernel void simple(__global int* data) {
  int tid = get_global_id(0)*get_global_size(0)+get_local_id(0);
  data[tid] = ave(tid, tid);
}
