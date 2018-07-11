function [Io] = skin_ycbcr(Ip,min,max)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Ip=rgb2ycbcr(Ip);
Ip=Ip(:,:,3);
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
%imtool(Ip),imhist(Ip)
%CrCR=im2bw(CrCR,130/255);
end

