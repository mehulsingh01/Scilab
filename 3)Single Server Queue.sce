//Practical 3
//Single Server Queue Simulation
arrival_time=[0,6,7,11,14,20,25]	
burst_time=[2,3,1,1,1,1,2]
wait_time = [0, 0, 0, 0, 0, 0, 0]
idle_time = [0, 0, 0, 0, 0, 0, 0]
service_end = [0, 0, 0, 0, 0, 0, 0]
ongoing = 0;
for i = 1:7           
	at = arrival_time(i)
    bt = burst_time(i)
	if(ongoing > at)	then
    	wait(i) = ongoing - at

	end
    
    ongoing = at + bt

    service_end(i) = ongoing
   
    if(i < 7)	then
    	if(arrival_time(i+1) > ongoing)	then
        	idle(i) = arrival_time(i+1) - ongoing
        end
    end
end

disp("Wait ")
for (i = 1:7)
	disp(wait_time(i))
end

disp("Service Time ")
for (i = 1:7)   
	disp(service_end(i))
end

disp("Idle Time ")
for (i = 1:7)
	disp(idle_time(i))
end 