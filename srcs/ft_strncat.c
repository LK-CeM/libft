/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lkunz <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/07 10:54:00 by lkunz             #+#    #+#             */
/*   Updated: 2018/07/07 11:13:11 by lkunz            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strncat(char *s1, const char *s2, size_t n)
{
	size_t i;

	i = 0;
	while (*s1)
		s1++;
	while (*s2 && i < n)
	{
		*s1 = *s2;
		s1++;
		s2++;
		i++;
	}
	*s1 = '\0';
	return (s1);
}