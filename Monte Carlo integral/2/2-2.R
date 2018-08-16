#将原函数拆分成两个（0，1）上的积分
f1<-function(x) {x*(1+x^2)^(-2)}
f2<-function(x) {x^(-3)*(1+x^(-2))^(-2)}
#取100000个点，撒在（0，1）（0，1）的区块上
n=100000;a=0;b=1;c1=0;d1=1;c2=0;d2=1

#投点法 Point method
point<-function(n,f1,f2){
    x=runif(n);y=runif(n)
    p1<-length(x[y<=f1(x)])/n;i1<-p1
    p2<-length(x[y<=f2(x)])/n;i2<-p2
    rt<-c('I'=p1+p2)
    rt
}
point(n,f1,f2)
plot(x,y,pch=16,col=c((y<=f2(x))+1))
lines(sort(x),f2(sort(x)),col="blue",lwd=2)

#随机值法 Random value method
random<-function(n,a,b,f1,f2){
    x<-runif(n)
    i1<-sum((b-a)*f1(a+(b-a)*x))/n
    i2<-sum((b-a)*f2(a+(b-a)*x))/n
    rt<-c('I'=i1+i2)
    rt
}
random(n,a,b,f1,f2)

integrate(f1,0,1)
integrate(f2,0,1)

integrate(f1,0,Inf)