#include <stdio.h>
#include <stdint.h>

#include "foo.h"

int main(int argc, char* argv[]) {
  auto t = Thing<uint32_t>(32);
  printf("Thing holds %d\n", (int)*t);
}
