clc;
clear all;
close all;
Vt=[60.4 60.8 61 61.2 61 61.7 61.9 62 60.6 61.2 62.7 62.9 62.4 63.3 63.3 63.5 63.3 64.1 64.2 64.4 64.2 65.5 66 66.3 65.7 67.4 68 68.7 66 70.9 71 71.4 71.8  68.6 72 71.4 72.7 72.7];

t=[0:.5:18.5];
%[a y] = lineReg(I, x)
%eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);

hold on
%plot(I,x,'*','LineWidth',2);
plot(t,Vt,'LineWidth',2),xlabel('Time(Hours)','FontWeight','bold'),ylabel('V_{t}(V)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('Terminal Voltage Vs. Time','FontWeight','bold'), grid on;
%annotation('textbox', [.6 .2 .25 .1], 'String', ...
                   % ['R_{internal} = 0.2189','\Omega'],'FontWeight','bold','BackgroundColor','white'),
                %annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
%legend('Raw','Fitted'),set(legend,'fontweight','bold')

