#include <stdio.h>
#include <assert.h>
#include "../deps/tap/tap.h"
#include "../src/add.h"

int main(void) {
  plan(3);

  ok(add(1, 1) == 2, "1 + 1 == 2");
  ok(add(1, 2) == 3, "1 + 2 == 3");
  ok(add(-1, 2) == 1, "-1 + 2 == 1");
  return 0;
}
