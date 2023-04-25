clear all; 
close all; 
clc; 
K=3; G1=7; G2=5;
msg=[1 1 0 0 1 0];

tre1 = poly2trellis(K,[G1 G2]); 
coded = convenc(msg,tre1); 
tblen = length(msg);
decoded = vitdec(coded, tre1,tblen,'trunc','hard');
