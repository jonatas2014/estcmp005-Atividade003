/*
    Programa que resolve a MÉDIA DA UEA
*/

#include <stdio.h>

/* Prova final */
void pf_evaluation(float ap1, float ap2){

    float pf;
    printf("Nota da prova final: ");
    scanf("%f", &pf);
    if ((ap1 + ap2 + pf)/3 < 6.0){
        printf("Reprovado na prova final\n");
        return;
    }
    else{
        printf("Aprovado na prova final\n");
        return;
    }
}

void uea_evaluation(float ap1, float ap2){

    float ap_mean = (ap1+ap2)/2;

    if (ap_mean >= 8.0){
        printf("Aprovado direto\n");
        return;
    }
    if ((ap_mean >= 4.0) && (ap_mean < 8.0)){
        pf_evaluation(ap1, ap2);
    }
    if (ap_mean < 4.0){
        printf("Reprovado direto\n");
        return;
    }

}

int main(){

    float ap1, ap2;
    printf("Nota da ap1: ");
    scanf("%f", &ap1);
    printf("Nota da ap2: ");
    scanf("%f", &ap2);

    uea_evaluation(ap1, ap2);
        
    return 0;
}