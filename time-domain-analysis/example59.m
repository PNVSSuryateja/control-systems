pkg load control
%Response to an initial condition
% System response to initial condition is converted to
% unit-step response by modifying the numerator polynomial
%Numerator and denominator after modification
num = [0.1 0.35 0];
den = [1 3 2];
% Defining system
sys = tf(num,den);
% using Step response command
[y,t,x] = step(sys);
plot(t,y)
grid on
title('Response of Spring-Mass-Damper system to initial condition')
xlabel('t Sec')
ylabel('Response')