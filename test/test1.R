sice<-function(n){
    p1=0;p2=0
    for(i in 1:n){
        u1<-runif(4)
        x1=floor(6*u1)+1
        if (max(x1)==6) p1=p1+1
        x2=floor(6*runif(24))+1
        x3=floor(6*runif(24))+1
        if(max(x2+x3)==12) p2=p2+1
    }
    rt<-c('p(A)'=p1/n,'p(B)'=p2/n)
    rt
}
sice(10000)