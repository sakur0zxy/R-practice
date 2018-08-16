#投点法 Point method
n=100000
x<-runif(n);y<-runif(n)
g<-function(x) {sqrt(1-x^2)}
p<-length(x[y<=g(x)])/n;i<-p
rt<-c('I'=i)
rt

#随机值法 Random value method
f1<-function(n,a,b,f){
    x<-runif(n)
    p<-sum((b-a)*f(a+(b-a)*x))/length(x);i<-p
    rt<-c('I'=i)
    rt
}
n=100000;a=0;b=1
f=function(x){sqrt(1-x^2)}
f1(n,a,b,f)

integrate(g,0,1)