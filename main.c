#include <stdio.h>

#ifdef DOTC
#require "./lib/add.c" as add
#require "./lib/mult.c" as mult
#else
extern int add(int, int);
extern int mult(int, int);
#endif

int main(void) {
  int a = 2;
  int b = 3;

  printf("%d + %d = %d\n", a, b, add(a, b));
  printf("%d * %d = %d\n", a, b, mult(a, b));
  return 0;
}
