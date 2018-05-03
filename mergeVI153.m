clc;
clear all;
close all;
voltage = [61.3 59.8 59.8 58.3 58.2 58.8 58.1 60 58.6 58.4 58.6 58.3 58.2 58.2 59.7 59 58.2 58.3 58.5 58.5 58.4 58.4 58.6 58.4 58.4 58.2 58.2 58.3 58.1 59 59.2 58.1 58.7 58 58.3];
current = [6.9 15.8 16.8 21.5 28.9 23.3 30.8 7.1 24.2 26.5 23.2 26.9 27.5 28.7 12.3 19.9 27.6 26.0 24.1 23.4 27.6 24.7 26.7 26.7 37.6 26.6 26.2 25.3 27.7 16.3 14.7 28.2 19.1 28.2 25.5];
time = 0:10:340;
hold on
%figure(1)
%plot(time,voltage,time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold'),set(gca,'FontWeight','bold')
[ax,p1,p2] = plotyy(time,voltage,time,current,'plot'),grid on
legend('Voltage', 'Current')

xlabel(ax(1),'Time(sec)','FontWeight','bold'),set(gca,'FontWeight','bold') % label x-axis
ylabel(ax(1),'Voltage(V)','FontWeight','bold'),set(gca,'FontWeight','bold') % label left y-axis
ylabel(ax(2),'Current(A)','FontWeight','bold'),set(gca,'FontWeight','bold')