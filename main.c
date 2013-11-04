#include <stdio.h>

#include "lib/add.h"
#include "lib/mult.h"

int main(void) {
  int a = 2;
  int b = 3;

  printf("%d + %d = %d\n", a, b, add(a, b));
  printf("%d * %d = %d\n", a, b, mult(a, b));
  return 0;
}
