# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nukim <nukim@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/30 05:02:45 by nukim             #+#    #+#              #
#    Updated: 2021/03/30 05:26:04 by nukim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SHARE_DIR	=		./src/share/
SHARE_SRCNAME = 	\
					get_next_line.c\
					stack_list1.c\
					stack_list2.c\
					stack_list3.c\
					stack_list4.c\
					string_list1.c\
					validate_list1.c

SHARE_SRCS		=	${addprefix ${SHARE_DIR}, ${SHARE_SRCNAME}}
SHARE_OBJS		=	${SHARE_SRCS:.c=.o}

CHECKER_DIR	=		./src/checker/
CHECKER_SRCNAME	=	\
					main.c\

CHECKER_SRCS	=	${addprefix ${CHECKER_DIR}, ${CHECKER_SRCNAME}}
CHECKER_NAME	=	checker
CHECKER_OBJS	=	${CHECKER_SRCS:.c=.o}

PUSH_SWAP_DIR = 	./src/push_swap/
PUSH_SWAP_SRCNAME	=	\
						main.c\
						push_swap1.c\
						push_swap2.c\
						push_swap3.c\

PUSH_SWAP_SRCS		=	${addprefix ${PUSH_SWAP_DIR}, ${PUSH_SWAP_SRCNAME}}
PUSH_SWAP_NAME		=	push_swap
PUSH_SWAP_OBJS		=	${PUSH_SWAP_SRCS:.c=.o}

INCDIR		=		./includes/
CC			=		gcc
CF			=		-Wall -Wextra -Werror

.c.o		:
					${CC} ${CF} -c $< -o ${<:.c=.o} -I${INCDIR}

${CHECKER_NAME}		:	${CHECKER_OBJS} ${SHARE_OBJS}
					${CC} ${CF} ${CHECKER_OBJS} ${SHARE_OBJS} -o ${CHECKER_NAME}

${PUSH_SWAP_NAME}	:	${PUSH_SWAP_OBJS} ${SHARE_OBJS}
					${CC} ${CF} ${PUSH_SWAP_OBJS} ${SHARE_OBJS} -o ${PUSH_SWAP_NAME}

fclean		:		cclean psclean
					rm -rf ${CHECKER_NAME}
					rm -rf ${PUSH_SWAP_NAME}

cclean		:
					rm -rf ${CHECKER_OBJS}
					rm -rf ${SHARE_OBJS}

psclean		:
					rm -rf ${PUSH_SWAP_OBJS}
					rm -rf ${SHARE_OBJS}

clean		:		cclean psclean

all			:		${CHECKER_NAME} ${PUSH_SWAP_NAME}

re			:		fclean all
