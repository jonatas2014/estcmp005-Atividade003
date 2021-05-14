/*
    Programa que recebe dois números inteiros e gera os números inteiros 
    que estão no intervalo compreendido por eles.
*/

#include<stdio.h>

int main(){

    int a, b;

    scanf("%d %d", &a, &b);
    
    int greater = (a > b) ? a : b;
    int lesser = (a < b) ? a : b;

    for (int i = lesser; i <= greater; i++){
        printf("%d ", i);
    }
    printf("\n");


    return 0;
}