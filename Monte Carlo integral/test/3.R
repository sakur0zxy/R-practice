f1=function(n,a,b,f){
    x=runif(n)
    sum((b-a)*f(a+(b-a)*x))/length(x)
}

n=100000;a=-2;b=2
f=function(x){exp(x+x^2)}
f1(n,a,b,f)
integrate(f,a,b)
