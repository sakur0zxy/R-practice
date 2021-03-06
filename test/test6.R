Newtons<-function(fun,x,ep=1e-5,it_max=100){
    index<-0;k<-1
    while(k<=it_max){
        x1<-x;obj<-fun(x);
        x<-x-solve(obj$j,obj$f);
        norm<-sqrt((x-x1)%*%(x-x1))
        if(norm<ep){
            index<-1;break
        }
        k<-k+1
    }
    obj<-fun(x)
    list(root=x,it=k,index=index,funVal=obj$f)
}
funs<-function(x){
    f<-c(x[1]^2+x[2]^2-5,(x[1]+1)*x[2]-(3*x[1]+1))
    j<-matrix(c(2*x[1],2*x[2],x[2]-3,x[1]+1),nrow=2,byrow=T)
    list(f=f,j=j)
}
Newtons(funs,c(0,1))