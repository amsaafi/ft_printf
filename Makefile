# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: samsaafi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/18 19:44:46 by samsaafi          #+#    #+#              #
#    Updated: 2023/12/18 19:44:47 by samsaafi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Werror -Wextra

SRC = ft_printf.c \
		src/ft_putchar.c \
		src/ft_putstr.c \
		src/ft_putnbr.c \
		src/ft_puthex.c \
		src/ft_puthex_upper.c \
		src/ft_putunbr.c \

OBJ = ${SRC:.c=.o}

all : ${NAME}

${NAME}: ${OBJ}

	ar -rc ${NAME} ${OBJ}

clean: 
	rm -f ${OBJ}

fclean: clean
	rm -f ${NAME}

re: fclean all
