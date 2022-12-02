//Practical 1
//Random Number Generation
//rand(m,n) will generate a matrix of random numbers between 0 to 1
//To generate an array of m random numbers, use rand(1,m)
rand(1,10)
//To generate an array of m numbers in the range of a to b, use a+(b-a)*rand(1,m)
15+(30-15)*rand(1,10)
//For whole numbers, use intArray=floor(randomArray)
randomArray=15+(30-15)*rand(1,10)
intArray=floor(randomArray)+1
//Or, use grand(m,n,"generator",a,b)
grand(1,10,"uin",15,30)


//Linear Congruential Random Number Generator 
//x2=(a*x1+c) mod m, where x1=initial number, x2=next number, a= multiplier, c=increment, m=modulus
//Below is a code to to yield 20 random numbers with seed as 19
x=19
a=27
c=41
m=100
for i=1:20
	x=modulo((a*x+c),100)
end
