NAME := libftprintf.a
HEADER := $(NAME:%.a=%.h)
SRCS := ft_printf.c
OBJECTS := $(SRCS:.c=.o)
CC_FLAGS := -Wall -Wextra -Werror

all: $(NAME) 

$(NAME): $(OBJECTS)
	ar rcs $(NAME) $^

%.o: %.c $(HEADER) Makefile
	cc $(CC_FLAGS) -c $< -o $@

re: fclean all

fclean: clean
	rm -rf $(NAME)

clean:
	rm -rf $(OBJECTS)

.PHONY: all re fclean clean