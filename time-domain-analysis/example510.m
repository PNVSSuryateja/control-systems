pkg load control
%Response to initial condition of a state space model using initial condition
% State space Matrices
A = [0 1;-10 -5];
B = [0;0];
C = [0 0];
D =[0];
%initial condition
x0 = [2;1];
t = 0:0.05:3;
%Defining system
sys = ss(A,B,C,D);
[y,t,x] = initial(sys,x0,t);
x1 = [1 0]*x';
x2 = [0 1]*x';
plot(t,x1,'o',t,x1,t,x2,'x',t,x2)
grid on
title('Response to initial condition')
xlabel('t Sec')
ylabel('State variable x1 and x2')
gtext('x1')
gtext('x2')