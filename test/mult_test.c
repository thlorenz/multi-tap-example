#include <stdio.h>
#include <assert.h>
#include "../src/mult.h"

int main(void) {
  int a, b, prod;
  a = 1; b =1; prod = 1;
  printf("%d * %d = %d", a, b, prod);
  assert(mult(a, b) == prod);
  return 0;
}
