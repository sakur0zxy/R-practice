#投点法 Point method
n=100000;d=exp(exp(1))
x=runif(n);y=runif(n,0,d)
g<-function(x) {exp(exp(x))}
p<-length(x[y<=g(x)])/n;i<-p*d
rt<-c('I1'=i)
rt
plot(x,y,pch=16,col=c((y<=g(x))+1))
lines(sort(x),g(sort(x)),col="blue",lwd=2)

#随机值法 Random value method
f1<-function(n,a,b,f){
    x<-runif(n)
    i<-sum((b-a)*f(a+(b-a)*x))/n
    rt<-c('I2'=i)
    rt
}
n=100000;a=0;b=1
f<-function(x) {exp(exp(x))}
f1(n,a,b,f)

integrate(g,0,1)