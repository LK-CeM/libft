/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lkunz <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/07 10:54:00 by lkunz             #+#    #+#             */
/*   Updated: 2018/07/11 15:55:34 by lkunz            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strncat(char *s1, const char *s2, size_t n)
{
	size_t	i;
	int		c;

	i = 0;
	c = 0;
	while (s1[c])
		c++;
	while (*s2 && i < n)
	{
		s1[c] = *s2;
		c++;
		s2++;
		i++;
	}
	s1[c] = '\0';
	return (s1);
}
