f<-function(x) {x*sin(x)}
n=100000;a=0;b=1

#投点法  Point method
point<-function(n,f){
    x<-runif(n);y<-runif(n)
    p<-length(x[y<=f(x)])/n;i<-p
    rt<-c('I'=i)
    rt
}
point(n,f)

#随机数法 Random value method
random<-function(n,f){
    x<-runif(n)
    i<-sum(f(x))/length(x)
    rt<-c('I'=i)
    rt
}
random(n,f)

integrate(f,0,1)