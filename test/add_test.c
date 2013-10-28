#include <stdio.h>
#include <assert.h>
#include "../src/add.h"

int main(void) {
  int a, b, sum;
  a = 1; b =1; sum = 2;
  printf("%d + %d = %d", a, b, sum);
  assert(add(a, b) == sum);
  return 0;
}

/*
 *
 *
  plan(2);

  ok(add(1, 1) == 2, "1 + 1 == 2");
  ok(add(1, 2) == 3, "1 + 2 == 3");

 */
