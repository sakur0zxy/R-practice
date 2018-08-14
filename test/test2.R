newspaper<-function(n,m,lambda,a,b){
    y=0
    for(i in 1:n){
         x<-rpois(1,lambda)
         if(x<m) y[i]=a*x-b*(m-x)
         if(x>=m) y[i]=a*m
    }
   mean(y)
}
newspaper(10000,100,120,1.5,0.6)
newspaper(10000,140,120,1.5,0.6)