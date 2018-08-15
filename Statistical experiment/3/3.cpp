#include<stdio.h>
int main()
{
   float x=1,m=9,n=10;
   for(int i=0;i<5;i++){
          x=x*(m/n);
   }
   x=x/100*21;

   printf("P=%.5f",x);

   return 0;
}