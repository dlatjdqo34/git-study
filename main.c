#include <stdio.h>

int sub(int a, int b)
{
	return a - b;
}

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
	int diff;

	sum = add(a, b);
	diff = sub(a, b);

	print_num(sum);
	print_num(diff);

	return 0;
}

