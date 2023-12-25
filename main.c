#include <stdio.h>

enum op_type {
	ADD,
	SUB,
	MUL,
	DIV
};

int cal(enum op_type op, int a, int b)
{
	int ret;

	switch (op) {
		case ADD:
			ret = a + b;
			break;
		case SUB:
			ret = a - b;
			break;
		case MUL:
			ret = a * b;
			break;
		case DIV:
			ret = a / b;
			break;
		default:
			ret = 0;
			break;
	}

	return ret;
}

int div(int a, int b)
{
	return a / b;
}

int mul(int a, int b)
{
	return a * b;
}

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

	print_num(cal(ADD, a, b));

	return 0;
}

