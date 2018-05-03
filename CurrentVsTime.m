clc;
clear all;
close all;
current = [21.0 32.7 24.1 32.8 24.0 40.1 29.6 26.3 06.3 25.4 06.5 31.4 30.7 27.2 18.3 36.7 21.5 18.6 2.3 27.1 13.0 18.8 34.1 18.8 31.6 13.2 25.4 17.1 1.0 4.8 21.8 30.1 32.2 3.9 26.4 25.5 1.0 19.6 29.9 13.8 11.0 12.2 14.9 23.8 24.1 0.8 20.0 	12.0 27.8 28.3 17.5 20.0 20.7 0.8 0.8 6.2 30.5 15.7 30.6 26.1 51.7 0.9 0.9 28.8 38.7 0.1 	34.4 18.1 30.1 0.3 8.0 16.3 24.7 24.9 33.7 32.4 38.1 21.1 0.3 24.4 14.8 29.3 31.8 39.8 	44.2 4.6 0.7 19.1 26.7 22.9 22.6 22.4 33.0 22.2 29.7 0.6 28.7 44.0 18.3 18.6 26.4 21.6 	28.2 20.1 32.4 15.9];
time= 00:30:3150;
Q(1) = 0;

for  i = 2:106
    Q(i) = trapz(time(1:i),current(1:i))
end
figure(3);
QTotal = trapz(time, current)
plot(time, 52.64-Q/3600,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Charge(Ah)','FontWeight','bold'),grid on,title('Charge (Ah) vs Time','FontWeight','bold'),set(gca,'FontWeight','bold');
annotation('textbox', [.55 .81 .32 .1],'String',[sprintf('Total Discharged=%.4fAh',QTotal/3600) ],'FontWeight','bold','BackgroundColor','white');
figure(2);
plot(time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Current(A)','FontWeight','bold'),grid on,title('Current vs Time','FontWeight','bold'),set(gca,'FontWeight','bold')


