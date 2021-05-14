/*
    Programa que recebe dois números inteiros e gera os números inteiros 
    que estão no intervalo compreendido por eles.
*/

#include<iostream>

using namespace std;

int main(){

    int a, b;

    cin >> a >> b;

    int greater = max(a, b);
    int lesser = min(a, b);

    for (int i = lesser; i <= greater; i++){
        cout << i << " ";
    }
    cout << endl;

    return 0;
}