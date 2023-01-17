#include <stdio.h>
#include <stdlib.h>

int main() {
  int N = 1000000;
  float *arr = malloc(N * sizeof(float));
  
  float range = 10.0f;
  for (int i = 0; i < N; i++) {
    arr[i] = range * (rand() / (float) RAND_MAX);
  }

  float sum = 0.0f;
  for (int i = 0; i < N; i++) {
    sum += arr[i];
  }

  printf("Sum: %f\n", sum);

  free(arr);
}
