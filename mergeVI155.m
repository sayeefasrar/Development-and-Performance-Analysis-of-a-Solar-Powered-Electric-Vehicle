clc;
clear all;
close all;
voltage = [60.7 58.4 57.7 58.5 57.4 58 57.4 58.1 57.5 58.3 57.9 59.1 59.2 57.5 57.5 57.8 57.9 57.2 56.6 57.9 57.2 57.6 58.5 57.5 57.4 59.5];
current = [6.4 23.9 31.2 20 39.3 24.6 34.5 24.2 31.1 21.2 27.4 11.6 10.8 30.4 30.6 26.5 26.5 34.4 41.5 25.7 33.3 28.0 19.3 33.1 31.4 7.9];
time = 0:10:250;
hold on
%figure(1)
%plot(time,voltage,time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold'),set(gca,'FontWeight','bold')
[ax,p1,p2] = plotyy(time,voltage,time,current,'plot'),grid on
legend('Voltage', 'Current')

xlabel(ax(1),'Time(sec)','FontWeight','bold'),set(gca,'FontWeight','bold') % label x-axis
ylabel(ax(1),'Voltage(V)','FontWeight','bold'),set(gca,'FontWeight','bold') % label left y-axis
ylabel(ax(2),'Current(A)','FontWeight','bold'),set(gca,'FontWeight','bold')