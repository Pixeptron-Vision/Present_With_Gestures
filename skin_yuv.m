function [ Io,min,max ] = skin_yuv(I)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% R=I(:,:,1);G=I(:,:,2);B=I(:,:,3);
%Ip=  0.615*R - 0.515*G - 0.100*B;
Ip=  0.615*I(:,:,1) - 0.515*I(:,:,2) - 0.100*I(:,:,3);
[min,max]=maxI(Ip);
%[min,max]=maxI((0.615*(I(:,:,1)) - 0.515*I(:,:,2) - 0.100*I(:,:,3)));
[r,c]=size(Ip);Io=zeros(r,c);
for i=1:r
    for j=1:c
        if(Ip(i,j)>=min)
            if(Ip(i,j)<=max)
                Io(i,j)=1;
            end
        end
    end
end
end

