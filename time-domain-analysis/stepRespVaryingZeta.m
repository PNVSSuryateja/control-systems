pkg load control
%Two dimensional plot and three dimesional plot of unit step response
%curves for the standard second-order system with wn=1
% and zeta = 0, 0.2, 0.4, 0.6, 0.8, and 1

t = 0:0.2:10;
zeta = [0 0.2 0.4 0.6 0.8 1];
for n =1:6
  num = [0 0 1];
  den = [1 2*zeta(n) 1];
  sys = tf(num,den);
  [y(1:51,n),t,x] = step(sys,t);
end
%To plot two dimensional plots
plot(t,y)
grid on
title('Plot of Unit-Step Response curves with \omega_n=1 and \zeta=0, 0.2, 0.4, 0.6, 0.8, 1')
xlabel('t(sec)')
ylabel('Response')
text(4.1,1.86,'\zeta=0')
text(3.5,1.5,'0.2')
text(3.5,1.24,'0.4')
text(3.5,1.08,'0.6')
text(3.5,0.95,'0.8')
text(3.5,0.86,'1')

%To plot a three-dimensional diagram, enter the command mesh(t,zeta,y')
mesh(t,zeta,y')
title('Three-Dimensional Plot of Unit-Step Response Curves')
xlabel('t Sec')
ylabel('\zeta')
zlabel('Response')