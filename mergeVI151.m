clc;
clear all;
close all;
voltage = [58.5 57.8 57.8 59.5 58.6 58.5 58.2 58.4 60.1 57.8 57.4 56.2 56.9 58.6 59.5 57.4 58.7 58.4 57.8 60.3 57.9 59.8 58.1 59.6 58.3 58.1];
current = [24.0 33.9 28.8 12.8 22.1 24 26.8 25.3 7.2 34.9 39 56.6 49.6 20.7 5.9 36.6 18.5 22.9 30.4 3.0 34.1 3.9 31.4 9.6 26.3 27];
time = 0:10:250;
hold on
%figure(1)
%plot(time,voltage,time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold'),set(gca,'FontWeight','bold')
[ax,p1,p2] = plotyy(time,voltage,time,current,'plot'),grid on
legend('Voltage','Current')

xlabel(ax(1),'Time(sec)','FontWeight','bold'),set(gca,'FontWeight','bold') % label x-axis
ylabel(ax(1),'Voltage(V)','FontWeight','bold'),set(gca,'FontWeight','bold') % label left y-axis
ylabel(ax(2),'Current(A)','FontWeight','bold'),set(gca,'FontWeight','bold')