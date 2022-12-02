//Practical 10
//Water reservoir
dam_limit=110
curr_vol=50
usage=10                        
usage_inc=0.1                 
fail=0         
need_not_satisfied=0
for year=1:100 ;                              
	seepage=grand(12,1,"uin",2,10) ;              
	evaporation=grand(12,1,"uin",2,50);
    rain=grand(12,1,"uin",10,50)      ;              
	river=grand(12,1,"uin",40,50);
  for month=1:12                     ;        
        outflow=seepage(month)+evaporation(month)+usage;
        inflow=rain(month)+river(month);
        curr_vol=curr_vol+(inflow-outflow)/100;
        if curr_vol>dam_limit then
        	fail=1
            disp("Dam floods after:")
            disp(year)
            disp("years")
            break
        end
        if curr_vol<=0 then
        	fail=1
            disp("Dam empties after:")
            disp(year)
            disp("years")
            break
        end
    end
	if fail>0 then
    break
    end
end
