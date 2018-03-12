pkg load control
%Example 5-11
%Response to intial condition
%State space representation
A = [0 1 0;0 0 1;-10 -17 -8];
B = [0 ;0 ;0];
C = [1 0 0];
D = [0];
t = 0:0.05:10;
x0 =[2;1;0.5];
%defining system
sys = ss(A,B,C,D);
[y,t,x] = initial(sys,x0,t);
plot(t,y)
grid on
title('Response to intial condition')
xlabel('t Sec')
ylabel('Output y')