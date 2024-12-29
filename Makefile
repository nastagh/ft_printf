
NAME = libftprintf.a

SRCS = ft_printf.c

# SRCS_BONUS = .c

FLAGS = -Wall -Werror -Wextra

INCLUDE = ft_printf.h

OBJS = ${SRCS:.c=.o}
# OBJS_BONUS = $(SRCS_BONUS:.c=.o)

all:	${NAME}

LIB = ar rcs
CC	= gcc
RM	= rm -f

${NAME}: ${OBJS} $(INCLUDE)
	 $(LIB) ${NAME} ${OBJS}

%.o: %.c
	$(CC) $(FLAGS) -c -o $@ $<

# bonus: $(OBJS) $(OBJS_BONUS)
# 		$(LIB) $(NAME) $(OBJS) $(OBJS_BONUS)

clean:
	${RM} ${OBJS}
# clean: ${RM} ${OBJS} ${OBJS_BONUS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: clean, all, fclean, re, bonus