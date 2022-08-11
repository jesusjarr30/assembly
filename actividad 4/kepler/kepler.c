#include "stdio.h"

double TerceraLey(double x);

int main(){
	double resp;
	double x=60.0;
	printf("se descubre un nuevo planeta que se encuentra orbitado \n");
	printf("a ____ AU del Sol,ingrese el numero de AU\n");
	scanf("%lf",&x);
	

	resp=TerceraLey(x);

	printf("Su periodo orbital es de  %f years \n ",resp);


	return 0;
}
