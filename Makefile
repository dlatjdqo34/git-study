TARGET		:= calc
BUILDDIR	:= bin
EXEC		:= $(addprefix $(BUILDDIR)/, $(TARGET))

INCPATH		:= .
INCLUDE		:= $(addprefix -I, $(INCPATH))

SRCS		:= $(wildcard *.c)
OBJS		:= $(patsubst %.c, $(BUILDDIR)/%.o, $(SRCS))

CC			= gcc
CFLAGS		= -g -Wall $(INCLUDE)

all : build $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

$(BUILDDIR)/%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

build:
	@mkdir -p $(BUILDDIR)

.PHONY: clean run
clean:
	@rm -rf $(BUILDDIR)

run:
	@$(EXEC)

