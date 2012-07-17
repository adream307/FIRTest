//conver Hex to dec

#include<stdio.h>
#include<stdlib.h>

int main()
{
    short x;
    while(!(feof(stdin)))
    {
        scanf("%X\n",&x);
        printf("%d\n",x);
    }
    return 0;
}

