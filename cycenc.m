n = 7;
k =4;
gx = [1 1 0 1];
d = de2bi(0:2^(k-1),'left-msb')
[i,px]=cyclgen(7,gx,'system')
g = circshift(px,[0,4])
c=rem(d*g,2)
