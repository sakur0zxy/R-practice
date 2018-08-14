#从1-10中随机有放回选7个数，求10恰好出现2次的概率，分别作理论和模拟分析

select<-function(n)
{
    p1=0
    for(i in 1:n){
        u1<-runif(7)
        x1=floor(u1*10)+1
        if(sum(x1==10)==2) p1=p1+1
    }
    rt<-c('P'=p1/n)
    rt
}

select(1000)
select(10000)