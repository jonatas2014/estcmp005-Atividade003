/*
    Programa que peça a temperatura em graus Fahrenheit, 
    transforme e mostre a temperatura em graus Celsius.
*/

#include <stdio.h>

int main(){

    float f;
    printf("Informe a temperatura em ºF: ");
    scanf("%f", &f);

    printf("%.1fºC\n", 5*((f - 32)/9));
    
    return 0;
}