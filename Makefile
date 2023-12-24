TARGET	= calc

SUBDIR	=

SRCS	= main.c
OBJS	= $(patsubst %.c,%.o,$(SRCS))

CC		= gcc
CFLAGS	= -g -Wall


$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $< -o $@

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

.PHONY: clean
clean:
	@rm -rf $(OBJS) $(TARGET)

