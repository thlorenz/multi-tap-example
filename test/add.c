#include "deps/tap.h"
#include "../src/add.h"

int main(void) {
  plan(2);

  ok(add(1, 1) == 2, "1 + 1 == 2");
  ok(add(1, 2) == 3, "1 + 2 == 3");

  return 0;
}
