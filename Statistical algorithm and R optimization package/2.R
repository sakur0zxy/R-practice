#Newton法求解非线性方程的根

Newtons<-function(fun,x,ep=1e-5,it_max=100){
    index<-0;k<-1
    while(k<=it_max){
        x1<-x
        x<-uniroot(f3,x,a=a,b=b,c=c,d=d,tol=0.0001) 
        norm<-sqrt((x-x1)%*%(x-x1))
        if(norm<ep){
            index<-1;break
        }
        k<-k+1
    }
    obj<-fun(x)
    list(root=x,it=k,index=index,funVal=obj$f)
}

f3<-function(x,a,b,c,d) a*x^3+b*x^2+c*x+d 
a<-1;b<-0;c<--1;d<–-1 `

Newtons(funs,c(0,1))