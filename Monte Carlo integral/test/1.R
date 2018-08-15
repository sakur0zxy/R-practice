n=1000
x=runif(n);y=runif(n)
g<-function(x) sin(x)/x
length(x[y<=g(x)])/n #sum(y<=g(x))/n
plot(x,y,pch=16,col=c((y<=g(x))+1))
lines(sort(x),g(sort(x)),col="blue",lwd=2)

integrate(g,0,1)


x<-seq(0, 1, length=100)
g<-function(x) sin(x)/x
plot(x,g(x))