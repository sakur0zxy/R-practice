one<-function(n){
    y=0
    for(i in 1:n){
        p1=0;y[i]=1
        repeat{
            u1<-runif(1)
            x1<-floor(u1*2)
            p1=p1+x1
            if(p1>1) break
            else y[i]=y[i]+1
            }
    }
    rt<-('E(n)'=mean(y, na.rm=FALSE))
    rt
}

one(10000)