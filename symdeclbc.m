clc; 
clear all; 
close all;
% Given H Matrix 
H = [1 0 1 1 1 0 0;
1 1 0 1 0 1 0;

0 1 1 1 0 0 1]; H
k = 4;

n = 7;

P = H';
 L = P; 
L((5:7), : ) = [];
I = eye(k);
G = [I L]
no = 2 ^ k;
for i = 1 : 2^k
for j = k : -1 : 1

if rem(i - 1, 2 ^ (-j + k + 1)) >= 2 ^ (-j + k) 
u(i, j) = 1; 
else
u(i, j) = 0;

end

echo off; 
end 
end

echo on; 
u

Code_vector = rem(u * G, 2)
