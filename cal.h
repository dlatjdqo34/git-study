#ifndef CAL_H
#define CAL_H

enum op_type {
	ADD,
	SUB,
	MUL,
	DIV,
};

int cal(enum op_type op, int l, int r);

#endif /* CAL_H */
