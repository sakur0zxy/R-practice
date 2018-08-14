buffon<-function(a,l,n){
    y<-0;theta<-0;m<-0
    for(i in 1:n){
        y[i]<-a*runif(1)
        theta[i]<-pi*runif(1)
        if (y[i]<=l*sin(theta[i])) m<-m+1
    }
    p<-m/n
    pie<-(2*l)/(p*a)
    result<-c('估计概率'=p,'pi估计值'=pie)
    result
}
buffon(1,0.8,10000)
buffon(2,1.5,10000)
buffon(3,2,10000) 