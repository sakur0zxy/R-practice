#从0-9中随机无放回选4个数，求组成偶数的概率。分别做理论和模拟分析。

#From 0-9, randomly select 4 numbers and find 
#the probability of forming an even number.

select2<-function(n){
    p1=0;
    for(i in 1:n){
        x1<-sample(x=0:9,size=4,replace=F)
        if(sum(x1)%%2==0) p1=p1+1
    }
    rt<-c('P'=p1/n)
    rt
}

select2(10000)