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

tags: tags-clean
	find ${PWD}/ -name '*.[chsCHS]' | ctags -R -L-

tags-clean:
	rm -f tags


.PHONY: clean run
clean:
	@rm -rf $(BUILDDIR)

run:
	@$(EXEC)

