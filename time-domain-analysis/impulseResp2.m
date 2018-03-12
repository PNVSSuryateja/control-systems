pkg load control
%Impulse response of a standard second order system
% with zeta = 0.1 and wn =1
num = [0 0 1];
den = [1 0.2 1];
sys =tf(num,den);
impulse(sys)
title('Unit-Impulse Response of G(s) = 1/s^2+0.2s+1')
grid on