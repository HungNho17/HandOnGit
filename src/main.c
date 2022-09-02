#include "stdio.h"

void recursive(int n)
{
  if (n > 0)
  {
    recursive(n - 1);
    printf("%d% \n", n);
  }
}

void main()
{
  printf("hello world !!");
  recursive(100);
  return;
}