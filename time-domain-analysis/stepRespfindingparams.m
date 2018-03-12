pkg load control
% Program to find rise time, peak time, maximum overshoot, and
% settling time of the second-order system and higher order system
% We assume zeta = 0.6 and wn = 5
num = [0 0 25];
den = [1 6 25];
t = 0:0.005:5;
sys = tf(num,den);
[y,t,x] = step(sys,t);
r=1;
while y(r)<1.0001
  r=r+1;
end
rise_time = (r-1)*0.005;
[ymax,tp] =max(y);
peak_time = (tp-1)*0.005;
max_overshoot = ymax-1;
s =1001;
while y(s)>0.98 & y(s)<1.02
  s=s-1;
end
settling_time = (s-1)*0.005;
disp('t_r ='),disp(rise_time);
disp('t_p ='),disp(peak_time);
disp('M_p ='),disp(max_overshoot);
disp('t_s ='),disp(settling_time);
plot(t,y,'b')
grid on
title('Unit-Step Response of standard second order system with \zeta = 0.6 and \omega_n =5')
xlabel('t Sec')
ylabel('Amplitude')