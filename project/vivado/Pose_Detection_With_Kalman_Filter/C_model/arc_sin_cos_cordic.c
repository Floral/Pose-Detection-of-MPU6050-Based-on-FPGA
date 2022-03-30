#include <stdio.h>
#include <stdlib.h>

double cordic_arccos_arcsin( double gamma );
int main(void)
{
    double z = cordic_arccos_arcsin( 0.08237746 );
    return 0;
}

double cordic_arccos_arcsin( double gamma )
{
   const double t[] =
   {
       1.0,      1 / 2.0,    1 / 4.0,    1 / 8.0,
       1 / 16.0, 1 / 32.0,   1 / 64.0,   1 / 128.0,
       1 / 256.0, 1 / 512.0, 1 / 1024.0, 1 / 2048.0,
       1 / 4096.0, 1 / 8192.0, 1 / 16384.0, 1/32768.0
    };

    // const double atan[] =   // radian,这里的角度是弧度角
    // {
    //     7.8539816339744830962E-01,
    //     4.6364760900080611621E-01,
    //     2.4497866312686415417E-01,
    //     1.2435499454676143503E-01,
    //     6.2418809995957348474E-02,
    //     3.1239833430268276254E-02,
    //     1.5623728620476830803E-02,
    //     7.8123410601011112965E-03,
    //     3.9062301319669718276E-03,
    //     1.9531225164788186851E-03,
    //     9.7656218955931943040E-04,
    //     4.8828121119489827547E-04,
    //     2.4414062014936176402E-04,
    //     1.2207031189367020424E-04,
    //     6.1035156174208775022E-05,
    //     3.0517578115526096862E-05,
    // };
    const double atan[] =
    {
        45.0, 26.565051177078, 14.0362434679265, 7.1250163489018,
        3.57633437499735, 1.78991060824607, 0.8951737102111, 0.4476141708606,
        0.2238105003685, 0.1119056770662, 0.0559528918938, 0.027976452617,
        0.01398822714227, 0.006994113675353, 0.003497056850704, 0.00001525878906131576
    };


    int i,j;
    double x = 1.0, y = 0.0, x_new = 0.0, y_new = 0.0;
    double angle = 0.0;
    int sigma = 0;
    double g = gamma;

    for(i = 0; i < 16; i++)
    {
        if( y < 0.0 ) sigma = -1;
        else sigma = +1;

        if( g <= x ) sigma = +sigma;
        else sigma = -sigma;

        for( j = 0; j < 2; j++ )
        {
            if( sigma < 0 )
            {
                x_new = x + y * t[i];
                y_new = y - x * t[i];
                x = x_new;
                y = y_new;
                angle -= atan[i];
            }
            else
            {
                x_new = x - y * t[i];
                y_new = y + x * t[i];
                x = x_new;
                y = y_new;
                angle += atan[i];
            }
        }
        g = g + (g * t[i]*t[i]);

        printf("i=%d,x=%f,y=%f,z=%f\n",i,x,y,angle);
    }

    printf( "arccos = %f\n", angle );
    printf( "arcsin = %f\n", 90 - angle );  // sin = pi/2 - cos

//    return 1.57079632679489661923-angleSum;
}