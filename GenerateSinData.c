//generate sin data for the filter

#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#define PI 3.1415926

int main()
{
    double step = 1.0/20;
    double t=0;
    double y=0;
    int d=0;
    while(t<100)
    {
        y=sin(2*PI*1*t)+sin(2*PI*3*t);
        y*=32767;
        d=(int)y;
        d=d&0xFFFF;
        printf("%X\n",d);
        t+=step;
    }
    return 0;
}

