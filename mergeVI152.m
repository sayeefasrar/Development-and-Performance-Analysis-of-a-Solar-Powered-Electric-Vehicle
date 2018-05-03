clc;
clear all;
close all;
voltage = [58.5 57.8 57.9 59.5 58.4 58.4 58.2 58.4 60.1 57.4 57.4 51.7 56.9 58.6 57.5 57.4 58.7 59.1 57.8 60.3 57.2 59.9 58.2 59.6 58.3 59.8 ];
current = [24 33.9 30 12.8 23.3 24 27 24.6 4.0 34.9 39 48.4 44.5 20.5 34.7 36.6 19.1 13.7 30.1 2.9 35.8 3.9 28.2 9.8 26.3 4.5];
time = 0:10:250;
hold on
%figure(1)
%plot(time,voltage,time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold'),set(gca,'FontWeight','bold')
[ax,p1,p2] = plotyy(time,voltage,time,current,'plot'),grid on
legend('Voltage', 'Current')

xlabel(ax(1),'Time(sec)','FontWeight','bold'),set(gca,'FontWeight','bold') % label x-axis
ylabel(ax(1),'Voltage(V)','FontWeight','bold'),set(gca,'FontWeight','bold') % label left y-axis
ylabel(ax(2),'Current(A)','FontWeight','bold'),set(gca,'FontWeight','bold')