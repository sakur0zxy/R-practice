#求22个人中恰好有两人生日相同的概率，再分别求40人，50人和64人时的概率

#Calculate the probability of the event that 
#2 men having the same birthday in 22 people.
#Then finding the probability when there are 
#40,50 or 64 people.

birthday<-function(n,m)
{
    p=0;
    for(i in 1:n){
        u<-runif(m)
        x=floor(u*365)+1
        y<-unique(x)
        if(length(y)<m){
            if(length(y)>m-2) 
            p=p+1
        } 
    }
    rt<-c('P'=p/n)
    rt
}

birthday(10000,22)
birthday(10000,40)
birthday(10000,50)
birthday(10000,64)