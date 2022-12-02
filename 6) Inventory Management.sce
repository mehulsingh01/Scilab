//Practical 6
//Inventory Management
reorder_point=[125,125,150,175,175];
reorder_quantity=[150,250,250,250,300];
demands=grand(1,180,"uin",0,99);
for policy=1:5;
	stock=115;
	limit=reorder_point(policy);
    quantity=reorder_quantity(policy);
    profit=0;
    loss=0;
	days_left=0;
	ordered=0;
    for day=1:180;
    	demand=demands(day);
        if days_left>0 & ordered==1 then
        	days_left=days_left-1;
            end
        if days_left==0 & ordered==1 then;
        	stock=stock+quantity;
            ordered=0;
            end;
        if stock<=limit & ordered==0 then;
        	ordererd=1;
            days_left=3;
           end;
        if stock>demand then;
        	profit=profit+(demand*16);
            stock=stock-demand;
            loss=loss+(stock*0.75);
		else;
          	profit=profit+(stock*16);
            loss=loss+((demand-stock)*18);
			stock=0;
            end;
		end
    disp("POLICY:"+string(policy))
    disp("limit:"+string(limit))
    disp("reorder:"+string(quantity))
	disp("profits:"+string(profit))
    disp("loss:"+string(loss))

end