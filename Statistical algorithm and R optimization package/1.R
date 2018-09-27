#二分法求函数的根

fzero<-function(f,a,b,eps=1e-5){
    if (f(a)*f(b)>0)
    list(fail="finding root is fail")
    else{
        repeat{
            if(abs(b-a)<eps) break;
            x<-(a+b)/2;
            if(f(a)*f(x)<0) b<-x
            else a<-x
        }
        list(root=(a+b)/2,fun=f(x))
    }
}
f1<-function(x) {2*x^3-6*x-1} #(-2,-1)(-1,0)(1,2)
f2<-function(x) {exp(x-2)+x^3-x} #(-2,-1)(0,0.5)(0.5,1)
f3<-function(x) {1+5*x-6*x^3-exp(2*x)} #(-1,-0.5)(-0.5,0)(0.5,1)

fzero(f1,-2,-1)
fzero(f1,-1,0)
fzero(f1,1,2)
fzero(f2,-2,-1)
fzero(f2,0,0.5)
fzero(f2,0.5,1)
fzero(f3,-1,-0.5)
fzero(f3,-0.5,0)
fzero(f3,0.5,1)
#curve(f3,-1,1)
