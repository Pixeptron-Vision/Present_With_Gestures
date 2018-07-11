function [f] = Count_SC(I,X,Y,radius)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
            for i=1
                switch i
                    case 1
                          f(i)=SemiCircleC(I,X,Y,radius,0,0,1);                    
                end
                          f(i)=(ceil(f(i)/2));
            end
         f=floor(median(f));   
end

