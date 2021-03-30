/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   string_list1.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nukim <nukim@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/30 05:05:29 by nukim             #+#    #+#             */
/*   Updated: 2021/03/30 05:25:58 by nukim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/share.h"

size_t				ft_strlen(const char *str)
{
	size_t		ret;

	ret = 0;
	while (str[ret] != 0)
		ret++;
	return (ret);
}

int					ft_puterror(const char *str)
{
	write(2, str, ft_strlen(str));
	return (0);
}

int					ft_putstr(const char *str)
{
	write(1, str, ft_strlen(str));
	return (0);
}

int					ft_putorder(const char *str, t_stack *stack)
{
	write(1, str, ft_strlen(str));
	write(1, &(stack->id), 1);
	write(1, "\n", 1);
	return (0);
}
