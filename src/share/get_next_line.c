/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nukim <nukim@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/30 05:04:53 by nukim             #+#    #+#             */
/*   Updated: 2021/03/30 05:26:02 by nukim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/share.h"

char	*ft_charappend(char *target, char value)
{
	int		idx;
	char	*ret;

	idx = 0;
	if (!(ret = malloc(ft_strlen(target) + 2)))
		return (0);
	while (target[idx] != 0)
	{
		ret[idx] = target[idx];
		idx++;
	}
	ret[idx] = value;
	idx++;
	ret[idx] = 0;
	free(target);
	return (ret);
}

int		get_next_line(char **line)
{
	int		rb;
	char	buff;

	if (!(*line = malloc(1)))
		return (-1);
	(*line)[0] = 0;
	while ((rb = read(0, &buff, 1)) > 0)
	{
		if (buff == '\n')
			return (1);
		*line = ft_charappend(*line, buff);
		if (*line == 0)
			return (-1);
	}
	if (rb == -1)
		return (-1);
	else
		return (0);
}
