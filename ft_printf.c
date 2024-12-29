#include "ft_printf.h"

int	ft_printf(const char *str, ...)
{
	va_list	args;
	int		num;

	// int		i;
	num = 0;
	// i = 0;
	va_start(args, str);
	while (*str)
	{
		if (*str == '%')
			str++;
			
		// num = 1;
		else
			// num = 2;
			str++;
	}
	va_end(args);
	return (num);
}

// Firstly, check if have in 1st paramentr %, and if 'yes',
// check a type of the next element