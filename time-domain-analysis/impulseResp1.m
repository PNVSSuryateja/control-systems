pkg load control
%Program to obtain impulse response of a state space model
A = [0 1;-1 -1];
B = [0;1];
C= [1 0];
D = [0];
sys = ss(A,B,C,D);
impulse(sys)
title('Unit-Impulse Response')
grid on