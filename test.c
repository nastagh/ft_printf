#include "ft_printf.h"
#include <stdio.h>

int	main(void)
{
	int c;
	int d;
	c = ft_printf("hello");
	d = ft_printf("hi%");
	printf("%d", c);
	printf("%d", d);
	return (0);
}