function[bigobj]=BiggestBlob(k)
%k=im2bw((imread('Fill4.jpg')),0.9);
[k1,num]=bwlabel(k);
max1=0;
for i =1 : num
    max=find(k1==i);    
    if max1 < length(max)
        max1=length(max);
    end
    
end
%gh=regionprops(k,'Area');
bigobj=bwareaopen(k,max1);
%imshow(bigobj);
%stats = regionprops(bigobj,'Centroid','MajorAxisLength','MinorAxisLength');
 %             centers = stats.Centroid;
 %             diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
 %             radii = diameters/2;
 %             f=Count_SC(bigobj,centers(1),centers(2),radii);
end