NAME=main
CC=gcc
CFLAGS=-Wall

CFILES=main.c

OBJDIR=obj
OBJS=$(CFILES:%.c=obj/%.o)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS)

all: $(NAME)

$(OBJDIR)/%.o: %.c
	$(CC) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean:
	rm -f $(NAME)

run: $(NAME)
	./$(NAME)

re: fclean all run
