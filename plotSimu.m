% Author: Adriano Rodrigues
% CloseFcn callback for Example_2_1.slx and plot all relevant signals

% Close figures
close all

% Plot y(t)
figure('Name','y(t)','NumberTitle','off') % Initialize figure frame
plot(t,y,'LineWidth',2)                   % Plot curves
grid on                                   % Enable grid
axis([min(t) max(t) -3 1])                % Limit axes
% Name labels
xlabel('Time [sample]')
ylabel('y(t)')
title('y(t)')
% hold on
% plot(t+1,-(2.856+.7)*exp(-2*t)+0.7)
% legend('y(t)','Dinâmica (\lambda+1)^2')
legend('y(t)')

% Plot u(t)
figure('Name','u(t)','NumberTitle','off') % Initialize figure frame
plot(t,u,'LineWidth',2)                   % Plot curves
grid on                                   % Enable grid
% Name labels
xlabel('Time [sample]')
ylabel('u(t)')
title('u(t)')
legend('u(t)')

% Plot x(t)
figure('Name','x(t)','NumberTitle','off') % Initialize figure frame
plot(t,x,'LineWidth',2)                   % Plot curves
grid on                                   % Enable grid
% Name labels
xlabel('Time [sample]')
ylabel('x(t)')
title('x(t)')
legend('x_1(t)','x_2(t)')

% Plot xMA(t)
figure                       % Initialize figure frame
plot(t,xMA,'LineWidth',2)    % Plot curves
grid on                      % Enable grid
% Name labels
xlabel('Time [sample]')
ylabel('xMA(t)')
title('xMA(t)')
legend('x_{1MA}(t)','x_{2MA}(t)')