function [A,C]= playbingo(i,A,C)
a=find(A==i); % location of the number in the array
b=find(C==i);% location of the number in the array
A(a)=0;
C(b)=0;


end