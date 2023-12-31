#include <cal.h>

int cal(enum op_type op, int l, int r)
{
	int ret;

	switch (op) {
		case ADD:
			ret = l + r;
			break;
		case SUB:
			ret = l - r;
			break;
		case MUL:
			ret = l * r;
			break;
		case DIV:
			ret = l / r;
			break;
		default:
			ret = 0;
			break;
	}

	return ret;
}


