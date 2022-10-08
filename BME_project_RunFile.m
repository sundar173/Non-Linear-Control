%% Run file for BME Project - Tracking control of a Robot Manipulator
%% EMK controller
clc;
clear;
close all;
sim('BME_project_EMK');

%%% For plotting
t = ans.tout;
e = ans.e;
q1 = ans.q1;
q2= ans.q2;
T = ans.T;

plot(e,'LineWidth',1)
title('Error convergence plot')
xlabel('Time (s)')
ylabel('Error, e (rad)')
legend('e1','e2')

figure
plot(q1,'LineWidth',1)
title('q1 vs qd1 plot')
xlabel('Time (s)')
ylabel('qd1, q1 (rad)')
legend('qd1','q1')

figure
plot(q2,'LineWidth',1)
title('q2 vs qd2 plot')
xlabel('Time (s)')
ylabel('qd2, q2 (rad)')
legend('qd2','q2')

figure
plot(T,'LineWidth',1)
title('Torque input')
xlabel('Time (s)')
ylabel('Torque, T (Nm)')
legend('T1','T2')

%% Adaptive Controller
clc;
clear;
close all;
sim('BME_project_Adaptive');

%%% For plotting
t = ans.tout;
e = ans.e;
q1 = ans.q1;
q2= ans.q2;
T = ans.T;
param = ans.param;

plot(e,'LineWidth',1)
title('Error convergence plot')
xlabel('Time (s)')
ylabel('Error, e (rad)')
legend('e1','e2')

figure
plot(param,'LineWidth',1)
title('Parameters  Estimation')
xlabel('Time (s)')
ylabel('Estimated parameters')
legend('p1','p2','p3','fd1','fd2')

figure
plot(q1,'LineWidth',1)
title('q1 vs qd1 plot')
xlabel('Time (s)')
ylabel('qd1, q1 (rad)')
legend('qd1','q1')
xlim([0 30])

figure
plot(q2,'LineWidth',1)
title('q2 vs qd2 plot')
xlabel('Time (s)')
ylabel('qd2, q2 (rad)')
legend('qd2','q2')
xlim([0 30])

figure
plot(T,'LineWidth',1)
title('Torque input')
xlabel('Time (s)')
ylabel('Torque, T (Nm)')
legend('T1','T2')
xlim([0 30])

%% Robust Controller - Sliding mode
clc;
clear;
close all;
sim('BME_project_Robust');

%%% For plotting
t = ans.tout;
e = ans.e;
q1 = ans.q1;
q2= ans.q2;
T = ans.T;

plot(e,'LineWidth',1)
title('Error convergence plot')
xlabel('Time (s)')
ylabel('Error, e (rad)')
legend('e1','e2')
xlim([0 30])

figure
plot(q1,'LineWidth',1)
title('q1 vs qd1 plot')
xlabel('Time (s)')
ylabel('qd1, q1 (rad)')
legend('qd1','q1')
xlim([0 30])

figure
plot(q2,'LineWidth',1)
title('q2 vs qd2 plot')
xlabel('Time (s)')
ylabel('qd2, q2 (rad)')
legend('qd2','q2')
xlim([0 30])

figure
plot(T,'LineWidth',1)
title('Torque input')
xlabel('Time (s)')
ylabel('Torque, T (Nm)')
legend('T1','T2')
xlim([0 8])
