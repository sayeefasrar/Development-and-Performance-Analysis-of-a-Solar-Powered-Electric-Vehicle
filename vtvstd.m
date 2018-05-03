clc;
clear all;
close all;
Vt=[60.3 60 59.7 59.6 59.4 59.1 59 58.8 59 58.5 58.4 58.2 58.2 57.8 57.6 57.3 58.4 56.5 53.9 51.6 54.6 50.1 46.8 45.2 43.7];

t=[0:.5:12];
%[a y] = lineReg(I, x)
%eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);

hold on
%plot(I,x,'*','LineWidth',2);
plot(t,Vt,'LineWidth',2),xlabel('Time(Hours)','FontWeight','bold'),ylabel('V_{t}(V)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('Terminal Voltage Vs. Time','FontWeight','bold'), grid on;
%annotation('textbox', [.6 .2 .25 .1], 'String', ...
                   % ['R_{internal} = 0.2189','\Omega'],'FontWeight','bold','BackgroundColor','white'),
                %annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
%legend('Raw','Fitted'),set(legend,'fontweight','bold')

