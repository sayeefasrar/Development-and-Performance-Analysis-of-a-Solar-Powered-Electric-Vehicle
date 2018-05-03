clc;
clear all;
close all;
voltage = [61.1 58.3 58.2 58.8 57.7 59.3 57.3 57.8 57.5 57.3 58.9 58.2 57.8 57.7 57.8 58.1 57.3 57.2 57.6 57.3 58.7 59.6 58.3 57.8 60];
current = [6.4 26.4 26.2 20.3 31.3 14.7 36.7 31.2 32.7 38.4 17.4 26.7 20.7 30.2 29.3 27.0 35.2 35.0 30.2 33.5 19.2 6.3 22.3 28.1 6.4];
time = 0:10:240;
hold on
%figure(1)
%plot(time,voltage,time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold'),set(gca,'FontWeight','bold')
[ax,p1,p2] = plotyy(time,voltage,time,current,'plot'),grid on
legend('Voltage', 'Current')

xlabel(ax(1),'Time(sec)','FontWeight','bold'),set(gca,'FontWeight','bold') % label x-axis
ylabel(ax(1),'Voltage(V)','FontWeight','bold'),set(gca,'FontWeight','bold') % label left y-axis
ylabel(ax(2),'Current(A)','FontWeight','bold'),set(gca,'FontWeight','bold')