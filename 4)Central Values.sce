//Practical 4
//Calculation of Central Values
arr=[1,2,9,5,4,6,3,3]
disp("Mean: ")
disp(sum(arr)/length(arr))

disp("Variance:")
disp(variance(arr))

disp("Standard Deviation")
disp(stdev(arr))

arr=gsort(arr)
disp(arr)
len=length(arr);
disp("Median: ")
if (modulo(len,2)==1) then
    disp(arr((len/2)+1))
else
    disp((arr(len/2)+arr((len/2)+1))/2)
end