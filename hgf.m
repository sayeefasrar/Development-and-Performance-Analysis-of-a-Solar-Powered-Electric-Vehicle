clc;
clear all;
close all;
voltage = [60.2 59.3 57.4 56.3 56.1 59.2 56.6 56.6 59.8 57.3 56.2 58.2 58.1 58.1 51.6 56.6 56.6 	59.8 57.1 58.2 56.2 56.1 57.1 56.9 55.8 59.4 59.8 58.3 55.6 57.3 55.8 56.0 53.6 59.2 59.7 	55.5 54.6 58.6 54.7 56.5 55.1 59.0 58.6 56.7 55.6 55.5 54.6 54.3 54.0 55.7 58.1 55.4 56.1 	54.7 54.4 53.9 52.8 57.5 59.1 55.8 54.8 55.2 55.4 55.2 53.8 55.1 54.2 58.3 54.1 53.0 56.0 	55.6 54.4 55.0 53.9 54.9 54.4 55.9];
current = [1.0 4.8 21.8 30.1 32.2 3.9 26.4 25.5 1.0 19.6 29.9 13.8 11.0 12.2 14.9 23.8 24.1 0.8 20.0 	12.0 27.8 28.3 17.5 20.0 20.7 0.8 0.8 6.2 30.5 15.7 30.6 26.1 51.7 0.9 0.9 28.8 38.7 0.1 	34.4 18.1 30.1 0.3 8.0 16.3 24.7 24.9 33.7 32.4 38.1 21.1 0.3 24.4 14.8 29.3 31.8 39.8 	44.2 4.6 0.7 19.1 26.7 22.9 22.6 22.4 33.0 22.2 29.7 0.6 28.7 44.0 18.3 18.6 26.4 21.6 	28.2 20.1 32.4 15.9];
time = 0:30:2310;
hold on
%figure(1)
%plot(time,voltage,time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold'),set(gca,'FontWeight','bold')
[ax,p1,p2] = plotyy(time,voltage,time,current,'plot'),grid on

xlabel(ax(1),'Time(sec)','FontWeight','bold'),set(gca,'FontWeight','bold') % label x-axis
ylabel(ax(1),'Voltage(V)','FontWeight','bold'),set(gca,'FontWeight','bold') % label left y-axis
ylabel(ax(2),'Current(A)','FontWeight','bold'),set(gca,'FontWeight','bold')