function [Io] = skin_ycbcr(Ip,min,max)
%Color segmentation in YCbCr color image
% if pixel value >= min && pixel value <= max then pixel value = 1 
% else pixel value = 0
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
end

