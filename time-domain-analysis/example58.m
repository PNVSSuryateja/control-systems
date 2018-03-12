pkg load control
% Problem no Example 5.8
% Given state space system
A = [-1 0.5;-1 0];
B = [0;1];
C = [1 0];
D =[0];
% Defining system
sys =ss(A,B,C,D);
%part a: response curve for unit-step input
[y1,t1,x1] = step(sys);
figure(1)
plot(t1,y1)
grid on
title('Unit-Step Response')
xlabel('t Sec')
ylabel('Amplitude')

%part b: response curve for decreasing exponential exp(-t)
t2 = 0:0.1:12;
r = exp(-t2);
[y2,t2,x2] = lsim(sys,r,t2);
figure(2)
plot(t2,y2,'o',t2,r,'-')
grid on
title('Response to decreasing exponential input')
xlabel('t Sec')
ylabel('Input and Output')