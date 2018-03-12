%Ramp response of standard second order system using step response method
% zeta = 0.5 and wn =1
%To obtain the ramp response of the transfer function G(s) divide G(s) by s and use th step response command
num = [0 0 0 1];
den = [1 1 1 0];
sys = tf(num,den);
t = 0:0.1:7;
[y,t,x] = step(sys,t);
%Adding the reference input plot 't' to the ramp response plot
plot(t,y,'o',t,t,'-')
grid on
title('Unit-Ramp Response Curve for System G(s) = 1/s^2+s+1')
xlabel('t Sec')
ylabel('Input and Output')