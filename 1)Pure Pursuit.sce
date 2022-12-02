//Practical 2
//Pure Pursuit
xb=[80,90,99,108,116,125,133,141,151,160,169,179,180] 
yb=[0,-2,-5,-9,-15,-18,-23,-29,-28,-25,-21,-20,-17]
fightervel=20
xf=0
yf=50
distance=sqrt((yb(1)-yf)^2+(xb(1)-xf)^2)
for t=1:12
	disp(t)
	sintheta=(yb(t)-yf)/distance 
    	costheta=(xb(t)-xf)/distance 
    	xf=xf+ fightervel* costheta 
    	yf=yf+ fightervel* sintheta
    	distance=sqrt((yb(t)-yf)^2+(xb(t)-xf)^2)
    	if(distance <=10) then
		disp("target engaged")
        	break
	end
end