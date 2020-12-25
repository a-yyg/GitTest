NAME=main
CC=gcc
CFLAGS=-Wall

SRCDIR=src
SRCFILES=main.c
SRCS=$(SRCFILES:%.c=$(SRCDIR)/%.c)

OBJDIR=obj
OBJS=$(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS)

all: $(NAME)

$(OBJDIR)/%.o: $(SRCS)
	$(CC) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean:
	rm -f $(NAME)

run: $(NAME)
	./$(NAME)

re: fclean all run
