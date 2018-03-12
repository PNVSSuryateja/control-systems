pkg load control
% Step response curve of a standard second order system
% Enter the numerator and denominator of the transfer function
num = [0 0 25];
den = [1 4 25];
sys = tf(num,den);
[y,t,x] = step(sys);
plot(t,y,'b')
grid on
xlabel('Time(sec)')
ylabel('Amplitude')
title('Unit-Step Response of G(s) = 25/(s^2+4s+25)')