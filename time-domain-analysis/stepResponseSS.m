pkg load control
% Step response curves for system defined in state space
% In this program we plot step response curves of a system having two inputs and two outputs
% Enter matrices A, B,C, D
A = [-1 -1;6.5 0];
B = [1 1;1 0];
C = [1 0;0 1];
D = [0 0;0 0];
% Define the system
sys = ss(A,B,C,D);
[y,t,x] = step(sys);
figure(1)
plot(t,y(:,1),'r',t,y(:,2),'b')
grid on
title('Step-Response Plots Input =u1(u2 =0)')
ylabel('Amplitude')
xlabel('Time(sec)')
text(pi,-0.04,'Y1')
text(pi,1.35,'Y2')
figure(2)
plot(t,y(:,3),'r',t,y(:,4),'b')
grid on
title('Step-Reponse Plots Input = u2(u1=0)')
ylabel('Amplitude')
xlabel('Time(sec)')
text(pi,0.12,'Y1')
text(pi,1.14,'Y2')