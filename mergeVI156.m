clc;
clear all;
close all;
voltage = [58.5 57.7 57.1 56.4 59.5 56.8 57.0 59.7 56.7 56.7 56.8 57.2 57.2 56.8 55.9 56.6 56.6 58.2 57.9 56.7];
current = [18.7 23.4 30.6 39.5 5.3 24.2 30.6 0.2 34.7 35.2 33.7 27.9 29.8 33.3 44.9 34.1 33.5 13.9 24 32.2];
time = 0:10:190;
hold on
%figure(1)
%plot(time,voltage,time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold'),set(gca,'FontWeight','bold')
[ax,p1,p2] = plotyy(time,voltage,time,current,'plot'),grid on
legend('Voltage', 'Current')

xlabel(ax(1),'Time(sec)','FontWeight','bold'),set(gca,'FontWeight','bold') % label x-axis
ylabel(ax(1),'Voltage(V)','FontWeight','bold'),set(gca,'FontWeight','bold') % label left y-axis
ylabel(ax(2),'Current(A)','FontWeight','bold'),set(gca,'FontWeight','bold')