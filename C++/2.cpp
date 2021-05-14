/*
    Programa que pede dois números e imprime o maior deles.
*/

#include<iostream>

using namespace std;

int main(){

    int a, b;

    cout << "Informe um número: ";
    cin >> a;
    cout << "Informe mais um número: ";
    cin >> b;

    cout << max(a, b) << endl;

    return 0;
}