#include <stdio.h>
#include <stdlib.h>

double cordic_asin_acos(double gamma);
int main(void)
{
    cordic_asin_acos(0.995);
    return 0;
}


double cordic_asin_acos(double gamma)
{
    const double t[] =
    {
        1.0, 1 / 2.0, 1 / 4.0, 1 / 8.0,
        1 / 16.0, 1 / 32.0, 1 / 64.0, 1 / 128.0,
        1 / 256.0, 1 / 512.0, 1 / 1024.0, 1 / 2048.0,
        1 / 4096.0, 1 / 8192.0, 1 / 16384.0, 1/32768.0
    };

    const double atan[] =
    {
        45.0, 26.565051177078, 14.0362434679265, 7.1250163489018,
        3.57633437499735, 1.78991060824607, 0.8951737102111, 0.4476141708606,
        0.2238105003685, 0.1119056770662, 0.0559528918938, 0.027976452617,
        0.01398822714227, 0.006994113675353, 0.003497056850704, 0.00001525878906131576
    };

    int i = 0;
    double x = 0.6072497, y = 0.0;
    double x_new, y_new;
    double angle = 0;

    for(i = 0; i < 16; i++)
    {
        if( y > gamma ) // |a| < 0.98
        {
            x_new = x + y * t[i];
            y_new = y - x * t[i];
            x = x_new;
            y = y_new;
            angle += atan[i];
        }
        else
        {
            x_new = x - y * t[i];
            y_new = y + x * t[i];
            x = x_new;
            y = y_new;
            angle -= atan[i];
        }
        printf("i = %d, x = %f, y = %f, z = %f\n", i, x, y, -angle);  // x = cos , y = sin
    }
    printf( "asin = %f\n",-angle );
    printf( "acos = %f\n", 90+angle );
    //return -angleSum;
}
