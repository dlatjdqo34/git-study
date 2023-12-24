#include <stdio.h>

int add(int a, int b)
{
	return a + b;
}

void print_num(int n)
{
	printf("num: %d\n", n);
}

int main(void)
{
	int a = 1;
	int b = 2;
	int sum;

	sum = add(a, b);

	print_num(sum);

	return 0;
}

