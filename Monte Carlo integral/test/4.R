x=runif(100000,0,1)
y=runif(100000,0,1)
f=function(x,y){exp((x+y)^2)}
sum(f(x,y))/length(x)