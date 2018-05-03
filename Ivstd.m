clc;
clear all;
close all;
I=[4.05 4.02 4.04 4.03 3.99 4.03 4.05 4.03 4.02 4 4.01 4.03 4.01 3.99 4 4.02 4.02 4.05 4.01 4.03 4 4.05 4.03 3.98 4.03];

t=[0:.5:12];
%[a y] = lineReg(I, x)
%eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);

hold on
%plot(I,x,'*','LineWidth',2);
figure(1)
plot(t,I,'LineWidth',2),xlabel('Time(Hours)','FontWeight','bold'),ylabel('I(A)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('Current Vs. Time','FontWeight','bold'), grid on;
%annotation('textbox', [.6 .2 .25 .1], 'String', ...
                   % ['R_{internal} = 0.2189','\Omega'],'FontWeight','bold','BackgroundColor','white'),
                %annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
%legend('Raw','Fitted'),set(legend,'fontweight','bold')
for  i = 2:length(I)
    Q(i) = trapz(t(1:i),I(1:i));
end
QTotal = trapz(t,I)
figure(2)
plot(t, 57.95-Q,'linewidth',2.5),xlabel('Time(Hour)','FontWeight','bold'),ylabel('Battery Disharged(Ah)','Fontweight','bold'),title('Battery Discharging Graph','FontWeight','bold'),set(gca,'FontWeight','bold'),grid on
 annotation('textbox', [.75 .80 .13 .1],'String',[sprintf('Total Charged=%.4fAh',QTotal)],'FontWeight','bold','BackgroundColor','white');

