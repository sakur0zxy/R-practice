#include<stdio.h>
#define x 64
int main()
{
    float m=365,n=365,p=1;
    for(int i=0;i<x-1;i++){
        p=p*(n/m);
        n--;
    }
    p=p*(x*(x-1)/2)/365;

    printf("P=%.5f",p);

    return 0;
}