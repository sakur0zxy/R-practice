train<-function(n){
    m=0
    for(i in 1:n){
        x=rnorm(1,30,2)
        p1=c(0.7,0.2,0.1)
        p2=c(0.3,0.4,0.2,0.1)
        y=sample(c(0,5,10),1,p=p1)
        z=sample(c(28,30,32,34),1,p=p2)
        if(x+y>z) m=m+1
    }
    rt<-c('ganshang'=m,'pinlv'=m/n)
    rt
}
train(10000)