function [f] = SemiCircleC(I,X,Y,r,a,b,c)
%UNTITLED Summary of this function goes here
%c=0.63   Detailed explanation goes here

f=0;r=r*c;      
        t=0:-0.01:-pi; %for semi circle
        y= Y+a+ r*sin(t);%for semi circle
        x= X+b + r*cos(t);%for semi circle
          disp('get lost its 2')
     i=1;
%figure ,imshow(I)
%hold on
%plot(x,y,'b')
%hold off
switch(i)
    case 1
            for m=1:length(x)-1
               
                    %y=sqrt(r^2-(x-C(1))^2)+C(2);
                    %y1=sqrt(r^2-(x+1-C(1))^2)+C(2);
      %              disp('case 1 for loop')
                   % disp(y(m))
                       if((y(m)<481 && floor(y(m))>0) && (y(m+1)<481 && floor(y(m+1))>0))
                           disp('case 2 if 1')
                              if((x(m)<641 && floor(x(m))>0) && (x(m+1)<641 && floor(x(m+1))>0))
                          %figure(2), plot(x,y,'r')
                                   disp('case 2 if 2')
                                          if(I(floor(y(m)),floor(x(m)))~=I(floor(y(m+1)),floor(x(m+1))))
                                                   f=f+1;
                                                   disp('case 2 if 3')
                                          end
                              end
                       end
                
            end
    
    case 2
            for m=1:length(y)-1
                
       %              disp('case 2 for loop')
                   % x=sqrt(r^2-(y-C(2))^2)+C(1);
                   % x1=sqrt(r^2-(y+1-C(2))^2)+C(1);
                       if((x(m)<641 && floor(x(m))>0) && (x(m+1)<641 && floor(x(m))>0))
                           disp('case 2 if 1')
                               if((y(m)<481 && floor(y(m))>0) && (y(m+1)<481 && floor(y(m+1))>0))
                           %figure(2),plot(x,y,'r')
                               disp('case 2 if 1')

                                                if(I(floor(y(m)),floor(x(m)))~=I(floor(y(m+1)),floor(x(m+1))))
                                                       f=f+1;
                                                       disp('case 2 if 3')
                                                end
                               end
                       end
                
            end

end                    
        


end

