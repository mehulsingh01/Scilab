//Practical 7
//Plot a graph between age and frequency
random_nos=10+(100-10)*rand(100,1);
age=floor(random_nos)+1
graph=histplot(10,age,normalization=%f)
xtitle("Age frequency","Age","Frequency");
disp(mean(graph))
disp(variance(graph))
disp(stdev(graph))