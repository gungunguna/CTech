clc; 
clear all; 
close all;

% Generator Matrix of (7,4) block code
 G = [1 0 0 0 1 1 1;
0 1 0 0 1 1 0;

0 0 1 0 1 0 1;

0 0 0 1 0 1 1]


%size 
k=4;
 
n=7;

% message Vectors 
m = [0 1 1 0;
0 1 0 1;

1 0 0 1]


% complete code vector 
code_vector = rem(m * G, 2)
code = encode(m,7,4,'linear/binary',G) 
parmat = hammgen(3)
trt = syndtable(parmat) 
m=decode(code,7,4,'linear/binary',G,trt)
