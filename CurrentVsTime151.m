clc;
clear all;
close all;
current = [3.7 30.1 35.2 25.7 37.3 23.5 31.1 25.3 7.4 24.2 0.4 5.2 6.8 31.5 22.1 17.4 30.5 24.2 32.4 38 1.5 15.5 33.3 22.5];
time= 00:10:230;
Q(1) = 0;

for  i = 2:24
    Q(i) = trapz(time(1:i),current(1:i));
end
figure(3);
QTotal = trapz(time, current)
plot(time, 35.68-Q/3600,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Charge(Ah)','FontWeight','bold'),grid on,title('Charge (Ah) vs Time','FontWeight','bold'),set(gca,'FontWeight','bold');
annotation('textbox', [.5 .81 .35 .1],'String',[sprintf('Total Discharged=%.4fAh',QTotal/3600) ],'FontWeight','bold','BackgroundColor','white');
figure(2);
plot(time,current,'linewidth',2),xlabel('Time(sec)','FontWeight','bold'),ylabel('Current(A)','FontWeight','bold'),grid on,title('Current vs Time','FontWeight','bold'),set(gca,'FontWeight','bold')


