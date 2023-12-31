TARGET		:= calc
BUILDDIR	:= bin
EXEC		:= $(addprefix $(BUILDDIR)/, $(TARGET))

SRCS		:= $(wildcard *.c)
OBJS		:= $(patsubst %.c, $(BUILDDIR)/%.o, $(SRCS))

CC			= gcc
CFLAGS		= -g -Wall

all : build $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $< -o $@

$(OBJS): $(SRCS)
	$(CC) -c $(CFLAGS) $< -o $@

build:
	@mkdir -p $(BUILDDIR)

.PHONY: clean run
clean:
	@rm -rf $(BUILDDIR)

run:
	@$(EXEC)

