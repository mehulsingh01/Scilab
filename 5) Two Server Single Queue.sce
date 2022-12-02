//Practical 5
//Two-server Single Queue Simulation

arrival_time=[0,1,3,4,6,7]           
burst_time=[3,2,4,7,5,6]      
     
wait_time=[0,0,0,0,0,0]
end_time=[0,0,0,0,0,0]
busy_time1=0
busy_time2=0                         
for i=1:6          
	at=arrival_time(i)                          
	if busy_time1<=arrival_time(i) then          
    	busy_time1=at+burst_time(i)          
        end_time(i)=busy_time1
    else if busy_time2<=arrival_time(i) then      
    	busy_time2=at+burst_time(i)
        end_time(i)=busy_time2
    else                                 
      	if busy_time1<=busy_time2 then
        	wait_time(i)=busy_time1-arrival_time(i)	 
        	busy_time1=busy_time1+burst_time(i)
            end_time(i)=busy_time1
        else
            wait_time(i)=busy_time2-arrival_time(i)	
        	busy_time2=busy_time2+burst_time(i)
            end_time(i)=busy_time2
        end
    end
    
end
end
disp("finishing time:")
disp(end_time)
disp("waiting time :")
disp(wait_time)