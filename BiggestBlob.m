function[bigobj]=BiggestBlob(k)
%Find The largest blob in the image
[k1,num]=bwlabel(k);
max1=0;
for i =1 : num
    max=find(k1==i);    
    if max1 < length(max)
        max1=length(max);
    end
    
end
bigobj=bwareaopen(k,max1);
end