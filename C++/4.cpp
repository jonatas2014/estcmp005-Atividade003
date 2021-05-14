/*
    Programa que resolve a MÉDIA DA UEA
*/

#include <iostream>

using namespace std;

/* Prova final */
void pf_evaluation(double ap1, double ap2){

    double pf;
    cout << "Nota da prova final: ";
    cin >> pf;
    if ((ap1 + ap2 + pf)/3 < 6.0){
        cout << "Reprovado na prova final\n";
        return;
    }
    else{
        cout << "Aprovado na prova final\n";
        return;
    }
}

void uea_evaluation(double ap1, double ap2){

    double ap_mean = (ap1+ap2)/2;

    if (ap_mean >= 8.0){
        cout << "Aprovado direto\n";
        return;
    }
    if ((ap_mean >= 4.0) && (ap_mean < 8.0)){
        pf_evaluation(ap1, ap2);
    }
    if (ap_mean < 4.0){
        cout << "Reprovado direto\n";
        return;
    }

}

int main(){

    double ap1, ap2;
    cout << "Nota da ap1: ";
    cin >> ap1;
    cout << "Nota da ap2: ";
    cin >> ap2;

    uea_evaluation(ap1, ap2);
        
    return 0;
}