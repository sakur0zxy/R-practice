n=10000
x=runif(n);y=runif(n,0,4)
g<-function(x) {(cos(50*x)+sin(20*x))^2}
p<-length(x[y<=g(x)])/n;I<-4*p
plot(x,y,pch=16,col=c((y<=g(x))+0))
lines(sort(x),g(sort(x)),col="blue",lwd=2)

integrate(g,0,1)