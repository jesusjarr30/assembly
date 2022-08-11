#include <stdio.h>

double Raiz(double ax,double bx, double cx, double dx);


int main(){
	
	double a,b,c;
	double d=4.0;
	double resp;

	printf("Ingrese su trinomio Ax2+Bx+C\n");
	printf("ingrese termino cuadrado\n");
	scanf("%lf",&a);
	printf("Ingrese B\n");
	scanf("%lf",&b);
	printf("Ingrese termino independiente\n");
	scanf("%lf",&c);
	resp=Raiz(a,b,c,d);

	if(a==0){
		printf("division por cero no permitida\n");}	

	else{

	if(resp < -1){
                printf("Raizes imaginarias\n");}
	else{

	if(resp > 1|| resp<-1){
                printf("Dos raices diferentes\n");}
       }
	 if(resp == 0.000000){
                printf("Raizes iguales\n");}
        
	}
	return 0;
}

