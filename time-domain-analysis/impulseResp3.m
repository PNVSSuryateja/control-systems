%Impulse response with the step function
% Tranfer function considered is standard second order function with zeta = 0.1 and wn =1
num = [0 1 0];
den = [1 0.1 1];
sys = tf(num,den);
step(sys)
title('Unit-Impluse Response of G(s) = 1/s^2+0.2s+1');
grid on