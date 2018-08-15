#12个球中有9个新球3个旧球，第一次从中取出三个使用后放回，
#第二次又取出三个
#1.求第二次取出的三个球都是新球的概率
#2.已知第二次取出的三个球都是新球，求第一次取出的球都是
#新球的概率

#There are 12 balls including 9 new balls and 3 used 
#balls. At the first time, randomly select 3 balls 
#and return them after playing. At the second time, 
#randomly select 3 balls again.
#1.Find the probability that the three balls taken 
#out for the second time are all new balls.
#2.It is known that the three balls taken out for 
#the second time are all new balls, and the probability 
#that the first three balls taken out are new ball,too.

select5<-function(n){
    p1=0;p2=0
    for(i in 1:n){
        x1<-sample(1:12, size=3, replace = FALSE, prob = NULL)
        used0=3
        used1=used0+sum(x1<=(12-used0))
        x2<-sample(1:12, size=3, replace = FALSE, prob = NULL)
        if(sum(x2<=(12-used1))==3) p1=p1+1
        if(sum(x1<=(12-used0))==3){
            if(sum(x2<=(12-used1))==3) p2=p2+1
        }
    }
    rt<-c('P1'=p1/n,'P2'=p2/p1)
    rt
}

select5(10000)