clc;
clear all;
close all;
voltage = [58.5 57.8 57.8 59.5 58.6 58.5 58.2 58.4 60.1 57.8 57.4 56.2 56.9 58.6 59.5 57.4 58.7 58.4 57.8 60.3 57.9 59.8 58.1 59.6 58.3 58.1 ] 
time = 0:10:250
plot(time,voltage,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Voltage(V)','FontWeight','bold'),grid on,title('Voltage vs Time ','FontWeight','bold')