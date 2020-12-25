NAME=main
CC=gcc
CFLAGS=-Wall -I$(INCDIR)

INCDIR=include
INCFILES=functest.h

SRCDIR=src
SRCFILES=main.c functest.c
SRCS=$(SRCFILES:%.c=$(SRCDIR)/%.c)

OBJDIR=obj
OBJS=$(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS) $(CFLAGS)

all: $(NAME)

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean:
	rm -f $(OBJS)

fclean:
	rm -f $(NAME)

run: $(NAME)
	./$(NAME)

re: fclean all run
