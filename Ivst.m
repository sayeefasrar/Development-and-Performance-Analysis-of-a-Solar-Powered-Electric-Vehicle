clc;
clear all;
close all;
I=[3 3 3 3.01 3 3 3 3 3 3 3 3 3 3 3 3 3.01 3 3 3 2.99 2.99 3 3 3 3 3 3 3 3 3 3 3 2.5 2.5 2.5 2.5 2.5];

t=[0:.5:18.5];
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
plot(t, 6.045+Q,'linewidth',2.5),xlabel('Time(Hour)','FontWeight','bold'),ylabel('Battery Charged(Ah)','Fontweight','bold'),title('Battery Charging Graph','FontWeight','bold'),set(gca,'FontWeight','bold'),grid on
 annotation('textbox', [.15 .80 .13 .1],'String',[sprintf('Total Charged=%.4fAh',QTotal)],'FontWeight','bold','BackgroundColor','white');

