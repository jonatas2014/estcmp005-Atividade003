/*
    Programa que peça a temperatura em graus Fahrenheit, 
    transforme e mostre a temperatura em graus Celsius.
*/

#include <iostream>

using namespace std;

int main(){

    double f;
    cout << "Informe a temperatura em ºF: ";
    cin >> f;

    cout << fixed;
    cout.precision(1);
    cout << 5*((f - 32)/9) << "ºC\n";
    
    return 0;
}