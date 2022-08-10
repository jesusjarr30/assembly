#include<stdio.h>
#include "func.h"

int main(){

	int opc=100;
	double res;
	double a,b;

do{
	printf("\n\t\t Calculadora\n");
	printf("1. Suma de dos numeros\n");
	printf("2. Resta de dos numeros\n");
	printf("3.Multiplicacion de dos numeros\n");
	printf("4. Divicion de dos numeros\n");
	printf("5. Raiz cuadrada de un numero\n");
	printf("6. numero elevado al cuadrado\n");
	printf("7. Logartimo comun\n");
	printf("8. Antilogartimo\n");
	printf("9. Seno\n");
	printf("10. Coseno\n");
	printf("11. Tangente\n");
	printf("100. salida\n");

	printf("Menu de opciones\n");	
	scanf("%i",&opc);
	if(opc!=100){
		if(opc<5){
		printf("Ingrese primer numero\n");
		scanf("%lf",&a);
		printf("Ingrese segundo numero\n");
		scanf("%lf",&b);
		}
		else{
		printf("Ingrese numero\n");
		scanf("%lf",&a);}
	}	
	switch (opc){
	
	case 1:
		res=suma(a,b);
		printf("La suma es %lf\n",res);
		break;
	case 2:
                res=resta(a,b);
                printf("La resta es%lf\n",res);
                break;
	case 3:
                res=mul(a,b);
                printf("La Multiplicacion es %lf\n",res);
                break;
	case 4:
                res=division(a,b);
                printf("La division es %lf\n",res);
                break;
	case 5:
		res=raiz(a);
		printf("La raiz es %lf\n",res);
		break;
	case 6:
		res=mul(a,a);
		printf("El numero elevedo al cuadrado es %lf\n",res);
		break;
	case 7:
		//res=logaritmo(a);
		printf("El logaritmo es %lf\n",res);
		break;
	case 8:
		//res=antilogaritmo(a);
		printf("l antilogaritmo es %lf\n",res);
		break;
	case 9:
		res=seno(a);
		printf("El seno es %lf\n",res);
		break;

	case 10:
		res=coseno(a);
		printf("El coseno es  %lf\n",res);
		break;
	case 11:
		res=tangente(a);
		printf("La tangente es  %lf\n",res);
		break;
		
	}//el fin del opc
}while(opc!=100);
	return 0;
}


