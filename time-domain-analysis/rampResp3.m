pkg load control
% Ramp Response using lsim command of standard second order system with zeta = 0.5 and wn =1
num = [0 0 1];
den = [1 1 1];
t = 0:0.1:8;
r =t;
sys = tf(num,den);
[y,t,x] = lsim(sys,r,t);
plot(t,y,'o',t,r,'-')
grid on
title('Unit-Ramp Response obtained by using lsim command')
xlabel('t Sec')
ylabel('Input and Output')