clc;
clear all;
close all;
V1=60.1;%Voc%
V2=[59.5 59.4 59.4 59.2 59.1 59.1 59 58.9 58.9 58.8 58.7 58.6 58.6 58.5]; %Vt%
x=V1-V2;
I=[2.08 2.21 2.31 2.54 2.83 2.90 3.07 3.30 3.45 3.8 4.12 4.38 4.68 5.01];
[a y] = lineReg(I, x)
eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);
hold on
plot(I,x,'*','LineWidth',2);
plot(I, a.*I+y,'LineWidth',2),xlabel('Battery Current (A)','FontWeight','bold'),ylabel('V_{oc}-V_{t}(V)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('SOC=55.88%','FontWeight','bold'), grid on;
annotation('textbox', [.6 .2 .25 .1], 'String', ...
                    ['R_{internal} = 0.3339','\Omega'],'FontWeight','bold','BackgroundColor','white'),
                 annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
legend('Raw','Fitted')
hold off