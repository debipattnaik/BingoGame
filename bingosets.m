function [cA,cC]= bingosets(Ac,Cc)
% sum of the numbers row wise, coloumn wise and diagonal wise for user
% matric and computer matrix
s1=sum(Ac(:,1));
s2=sum(Ac(:,2));
s3=sum(Ac(:,3));
s4=sum(Ac(:,4));
s5=sum(Ac(:,5));
s6=sum(Ac(1,:));
s7=sum(Ac(2,:));
s8=sum(Ac(3,:));
s9=sum(Ac(4,:));
s10=sum(Ac(5,:));
s11=sum(diag(Ac));
s12=sum(diag(flip(Ac)));

% zu=zu';
% ismember(zu,s1)

C1=sum(Cc(:,1));
C2=sum(Cc(:,2));
C3=sum(Cc(:,3));
C4=sum(Cc(:,4));
C5=sum(Cc(:,5));
C6=sum(Cc(1,:));
C7=sum(Cc(2,:));
C8=sum(Cc(3,:));
C9=sum(Cc(4,:));
C10=sum(Cc(5,:));
C11=sum(diag(Cc));
C12=sum(diag(flip(Cc)));


SA=[s1;s2;s3;s4;s5;s6;s7;s8;s9;s10;s11;s12]';
SC=[C1;C2;C3;C4;C5;C6;C7;C8;C9;C10;C11;C12]';

idx=SA==0;
cA=sum(idx(:));
idxC=SC==0;
cC=sum(idxC(:));

end