clc;
clear all;
close all;
voltage = [59.5 56.9 56.5 57.4 56.3 57.3 56.7 57.1 59.0 57.3 59.6 59.5 57.4 56.6 57.3 57.8 56.8 57.2 56.5 56 59.3 57.6 56.4 57.2];
current = [3.7 30.1 35.2 25.7 37.3 23.5 31.1 25.3 7.4 24.2 0.4 5.2 6.8 31.5 22.1 17.4 30.5 24.2 32.4 38 1.5 15.5 33.3 22.5];
time = 0:10:230;
hold on
%figure(1)
%plot(time,voltage,time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold'),set(gca,'FontWeight','bold')
[ax,p1,p2] = plotyy(time,voltage,time,current,'plot'),grid on
legend('Voltage', 'Current')

xlabel(ax(1),'Time(sec)','FontWeight','bold'),set(gca,'FontWeight','bold') % label x-axis
ylabel(ax(1),'Voltage(V)','FontWeight','bold'),set(gca,'FontWeight','bold') % label left y-axis
ylabel(ax(2),'Current(A)','FontWeight','bold'),set(gca,'FontWeight','bold')