% Ramp Response of state space model
% When the initial conditions are zero, unit-ramp response is the integral of unit-step response
% The unit-ramp response is obtained by adding a new state variable x3
% The dimension of the state equation is enlarged by one
% Matrices A,B,C,D of the original state equation and output equation
A = [0 1;-1 -1];
B = [0;1];
C = [1 0];
D = [0];
% Matrices AA, BB, CC, DD of the new enlarged state equation and output equation
AA = [A zeros(2,1);C 0];
BB = [B;0];
CC = [0 0 1];
DD = [0];
% Defining system
sys = ss(AA,BB,CC,DD);
%Step Response
[z,t,x] = step(sys);
%Adding unit-ramp input to the plot of x3
x3 = [0 0 1]*x';
plot(t,x3,'o',t,t,'-')
grid on
title('Unit-Ramp Response')
xlabel('t Sec')
ylabel('Input and Output')