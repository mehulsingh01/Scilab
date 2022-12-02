//Practical 9
//Covariance and correlation between MPG and weight of vehicle
mpg=grand(50,1,"uin",6,15);
weight=grand(50,1,"uin",1000,6000);
c=cov(mpg,weight)
r=correl(mpg,weight)
bar(mpg,weight)

