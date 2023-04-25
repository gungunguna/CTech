clc;
clear all;
close all;
n = input('enter the code bits: n:');
k=input('enter the data bits:k:');
m=n-k;
disp(m);
z=2^m;
disp(z);
i=0;
for j=0:1:n
sum=0;
for i=0:1:j
c=factorial(n)/factorial(n-i)*factorial(i);
sum=sum+c;
end
if sum >=z j=j-1;
sum=sum-c;
break;
end
end
ans = sprintf('(%d,%d) %can correct all combinations of %d errors
and it can also correct %d combintions of %d error',n,k,j,z-sum,j+1);
disp(ans);
