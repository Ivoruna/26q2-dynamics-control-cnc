%Measured data

t_meas = MeasuredSignals.t;
x_meas = MeasuredSignals.x;
phi_meas = MeasuredSignals.varphi;
%Simulation data

t_sim      = out.q.Time; 
q_sim=squeeze(out.q.Data);
x_sim      = q_sim(1,:);
phi_sim = out.q.Data(2,:);
%Deliverable_1_f

figure

plot(t_sim,x_sim,'LineWidth',1.5)

xlim([0 20])
ylim([-0.04 0.841])

title('Carriage Position x(t)')
xlabel('Time [s]')
ylabel('x [m]')

legend('Simulated')
grid on

figure

plot(t_sim,phi_sim,'LineWidth',1.5)

xlim([0 20])
ylim([-4.22 0.669])

title('Milling Head Absolute Angle \phi(t)')
xlabel('Time [s]')
ylabel('\phi [rad]')

legend('Simulated')
grid on
%% Deliverable_1_g
% X comparison 
figure

plot(t_sim,x_sim,'b--','LineWidth',1.5)
hold on
plot(t_meas,x_meas,'r-','LineWidth',1.5)

xlim([0 20])
ylim([-0.04 0.841])

title('Carriage Position x(t)')
xlabel('Time [s]')
ylabel('x [m]')

legend('Simulated','Measured','Location','best')
grid on
% Phi comparison 
figure

plot(t_sim,phi_sim,'b--','LineWidth',1.5)
hold on
plot(t_meas,phi_meas,'r-','LineWidth',1.5)

xlim([0 20])
ylim([-4.22 0.669])

title('Milling Head Absolute Angle \phi(t)')
xlabel('Time [s]')
ylabel('\phi [rad]')

legend('Simulated','Measured','Location','best')
grid on