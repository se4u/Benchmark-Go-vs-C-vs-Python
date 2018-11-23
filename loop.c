#include "stdio.h"
int main(){
  long int sum = 0;
  for(long int i = 0; i < 100000000; i++){
    sum += i;
  }
  printf("%ld\n", sum);
}
