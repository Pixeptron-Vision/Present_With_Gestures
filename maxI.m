function [th,max] = maxI(A)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
if isa(A,'uint8')
    flag=1;
else
    A=uint8(A);
    flag=1;
end
if flag ==1
[row,col]=size1(A);
x=zeros(1,256);
for m=1:row
    for n=1:col
       j=A(m,n);
       x(1,j+1)=x(1,j+1)+1;
    end
end
end
x=find(x);
g=sort(x,'descend');
max=g(1);th=floor(max/2);
end

