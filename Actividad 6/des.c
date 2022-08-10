#include <stdio.h>

void sumav(double *vec1, double *vec2);
void  productop(double *vec1, double *vec2);
void matrizs(double *fila1, double *fila2);
void matrizs2(double *fila1, double *fila2);

int main(){

	double  vec1[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	double  vec2[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	int opcion,opcion2;
	double aux=0;
	double ma1[4];
	double ma2[4];
	double ma3[4];
	double ma4[4];
	double ma5[4];
	double ma6[4];
	double ma7[4];
	double ma8[4];
//printf("ingresa numero uno\n");
//scanf("%lf",&vec1[0]);

printf("Que opcion desea selecionar\n");
printf("1. Suma de vectores\n");
printf("2.Producto punto\n");
printf("3. Suma de matrices\n");
printf("4. Producto matricial\n");
printf("5.Inversa de una matriz\n");
scanf("%i",&opcion);

if(opcion ==1){
//suma
printf("Eliga el tamaño de su arreglo  1.4 elemntos 2. 8 elementos  3. 16 elementos\n");
scanf("%i",&opcion2);
	if(opcion2==1){
//son cuatro
	for (int x=0;x<=3;x++){
	printf("ingrese numero de vector1\n");
	scanf("%lf",&vec1[x]);	}
	for (int x=0;x<=3;x++){
        printf("ingrese numero de vector2\n");
        scanf("%lf",&vec2[x]);   }
	}
	if(opcion2==2){	
	//son ocho
	for (int x=0;x<=7;x++){
        printf("ingrese numero de vector1\n");
        scanf("%lf",&vec1[x]);   }
        for (int x=0;x<=7;x++){
        printf("ingrese numero de vector2\n");
        scanf("%lf",&vec2[x]);   }

	}
	if(opcion2==3){
//son 16
	for (int x=0;x<=15;x++){
        printf("ingrese numero de vector1\n");
        scanf("%lf",&vec1[x]);  
		 }
        for (int x=0;x<=15;x++){
        printf("ingrese numero de vector2\n");
        scanf("%lf",&vec2[x]);  
		 }

	}
	sumav(vec1,vec2);
	for(int x=0;x<=15;x++){
	printf("Resultado  %lf\n",vec1[x]);
	}
}
if (opcion ==2){
// producto punto

printf("Eliga el tamaño de su arreglo  1.4 elemntos 2. 8 elementos  3. 16 elementos\n");
scanf("%i",&opcion2);
	if(opcion2==1){
//son cuatro
	for (int x=0;x<=3;x++){
	printf("ingrese numero de vector1\n");
	scanf("%lf",&vec1[x]);	}
	for (int x=0;x<=3;x++){
        printf("ingrese numero de vector2\n");
        scanf("%lf",&vec2[x]);   }
	}
	if(opcion2==2){	
	//son ocho
	for (int x=0;x<=7;x++){
        printf("ingrese numero de vector1\n");
        scanf("%lf",&vec1[x]);   }
        for (int x=0;x<=7;x++){
        printf("ingrese numero de vector2\n");
        scanf("%lf",&vec2[x]);   }

	}
	if(opcion2==3){
//son 16
	for (int x=0;x<=15;x++){
        printf("ingrese numero de vector1\n");
        scanf("%lf",&vec1[x]);  
		 }
        for (int x=0;x<=15;x++){
        printf("ingrese numero de vector2\n");
        scanf("%lf",&vec2[x]); }

	}


	productop(vec1,vec2);
	for(int x=0;x<=15;x++){
        printf("Resultado  %lf\n",vec1[x]);
        }
	for(int y=0;y<4;y++){
		aux=vec1[y]+aux;}
	printf("producto punto %lf\n");

}
if(opcion ==3)
{
// suma de matrices
	printf("Ingresar los datos de la matriz uno\n");
	printf("ingresa datos de la fila 0\n");
	for(int x=0;x<4;x++){
	scanf("%lf",&ma1[x]);
	}
        printf("ingresa datos de la fila 1\n");
	for(int x=0;x<4;x++){
	scanf("%lf",&ma2[x]);
	}
        printf("ingresa datos de la fila 2\n");
	for(int x=0;x<4;x++){
	scanf("%lf",&ma3[x]);
	}
        printf("ingresa datos de la fila 3\n");
	for(int x=0;x<4;x++){
	scanf("%lf",&ma4[x]);
	}
//matriz dos
        printf("Ingresar los datos de la matriz dos\n");
	printf("ingresa datos de la fila 0\n");
	for(int x=0;x<4;x++){
	scanf("%lf",&ma5[x]);
	}
        printf("ingresa datos de la fila 1\n");
	for(int x=0;x<4;x++){
	scanf("%lf",&ma6[x]);
	}
        printf("ingresa datos de la fila 2\n");
	for(int x=0;x<4;x++){
	scanf("%lf",&ma7[x]);
	}
        printf("ingresa datos de la fila 3\n");
	for(int x=0;x<4;x++){
	scanf("%lf",&ma8[x]);
	}
	matrizs(ma1,ma5);
	matrizs(ma2,ma6);
	matrizs2(ma3,ma7);
	matrizs(ma4,ma8);
       printf(" la suma d las matrices es\n ");
	printf("%lf 	%lf	%lf	%lf\n",ma1[0],ma1[1],ma1[2],ma1[3]);
	printf("%lf     %lf     %lf     %lf\n",ma2[0],ma2[1],ma2[2],ma2[3]);
	printf("%lf     %lf     %lf     %lf\n",ma3[0],ma3[1],ma3[2],ma3[3]);
	printf("%lf     %lf     %lf     %lf\n",ma4[0],ma4[1],ma4[2],ma4[3]);




}

	return 0;
}
