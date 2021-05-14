/*
    Programa que pede dois números e imprime o maior deles.
*/

#include<stdio.h>

int main(){

    int a, b;

    printf("Informe um número: ");
    scanf("%d", &a);
    printf("Informe mais um número: ");
    scanf("%d", &b);

    int greater = (a > b) ? a : b; 
    printf("%d\n", greater);

    return 0;
}