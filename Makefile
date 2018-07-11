NAME = libft.a

CC = /usr/bin/gcc
AR = /usr/bin/ar
CFLAGS = -Wall -Wextra -Werror -I includes

GREEN=\033[0;32m
BLUE=\033[0;34m
RED=\033[0;31m

FILENAMES	+=	ft_bzero.c \
				ft_atoi.c \
				ft_isalpha.c \
				ft_isalnum.c \
				ft_isascii.c \
				ft_isdigit.c \
				ft_isprint.c \
				ft_itoa.c \
				ft_memalloc.c \
				ft_strdup.c \
				ft_strcpy.c \
				ft_strlen.c \
				ft_memccpy.c \
				ft_memcpy.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_memdel.c \
				ft_memmove.c \
				ft_memset.c \
				ft_putchar_fd.c \
				ft_putchar.c \
				ft_putendl_fd.c \
				ft_putendl.c \
				ft_putnbr_fd.c \
				ft_putnbr.c \
				ft_putstr_fd.c \
				ft_putstr.c \
				ft_strcat.c \
				ft_strcmp.c \
				ft_strdel.c \
				ft_strequ.c \
				ft_striter.c \
				ft_striteri.c \
				ft_strjoin.c \
				ft_strnew.c \
				ft_strmap.c \
				ft_strncat.c \
				ft_strncmp.c \
				ft_strncpy.c \
				ft_strnequ.c \
				ft_strnstr.c \
				ft_strsplit.c \
				ft_strstr.c \
				ft_strsub.c \
				ft_strtrim.c \
				ft_tolower.c \
				ft_toupper.c \
				ft_strchr.c \
				ft_strmapi.c \
				ft_strlcat.c \
				ft_strclr.c \
				ft_strrchr.c \
				ft_lstnew.c \
				ft_lstdelone.c \
				ft_lstdel.c \
				ft_lstadd.c \
				ft_lstiter.c \
				ft_lstmap.c 

SOURCES		=	$(addprefix srcs/, $(FILENAMES))
OBJECTS		=	$(addprefix build/, $(FILENAMES:.c=.o))

.PHONY: all clean fclean re

all: $(NAME)

clean:
	@rm -rf build
	@echo "$(BLUE) ✓ Removed .o files"

fclean: clean
	@rm -f $(NAME)
	@echo "$(RED) ✓ Removed libft.a"

re: fclean all

$(NAME): $(OBJECTS)
	@$(AR) crs $@ $(OBJECTS)
	@echo "$(GREEN) ✓ Created libft.a"

build:
	@mkdir build/

build/%.o: srcs/%.c | build
	$(CC) $(CFLAGS) -c $< -o $@
