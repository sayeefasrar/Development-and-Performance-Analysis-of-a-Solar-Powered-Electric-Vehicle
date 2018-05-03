clc;
clear all;
close all;
V1=60.3;%Voc%
V2=[59.7 59.6 59.5 59.5 59.4 59.3 59.2 59.1 59.0 58.9 58.8 58.7]; %Vt%
x=V1-V2;
I=[2.26 2.39 2.69 2.79 2.89 3.0 3.49 3.9 4.39 4.79 5.1 5.4];
[a y] = lineReg(I, x)
eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);
hold on
plot(I,x,'*','LineWidth',2);
plot(I, a.*I+y,'LineWidth',2),xlabel('Battery Current (A)','FontWeight','bold'),ylabel('V_{oc}-V_{t}(V)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('SOC=65.88%','FontWeight','bold'), grid on;
annotation('textbox', [.6 .2 .25 .1], 'String', ...
                    ['R_{internal} = 0.2957','\Omega'],'FontWeight','bold','BackgroundColor','white'),
                 annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
legend('Raw','Fitted')
hold off