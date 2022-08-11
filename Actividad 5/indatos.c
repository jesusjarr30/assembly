#include <stdio.h>

void vecMUL(double a,double b,double c,double d);
int main(){

	double a,b,c,d;
	printf("Ingrese coeficientes  A=a+jb y B=c+jd\n");
	printf("Ingrese a \n");
	scanf("%lf",&a);
	printf("Ingrese b \n");
	scanf("%lf",&b);
	printf("Ingrese c \n");
	scanf("%lf",&c);
	printf("Ingrese d \n");
	scanf("%lf",&d);

	vecMUL(a,b,c,d);
	return 0;
}
