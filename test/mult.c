#include <stdio.h>
#include <assert.h>
#include "../deps/tap/tap.h"
#include "../src/mult.h"

int main(void) {
  int a, b, prod;
  plan(3);

  ok(mult(1, 1) == 1, "1 * 1 == 1");
  ok(mult(1, 2) == 2, "1 * 2 == 2");
  ok(mult(2, 3) == 6, "2 * 3 == 6");
  return 0;
}
