clc;
clear all;
close all;
V1=59.9;%Voc%
V2=[59.1 59.0 59.0 58.8 58.8 58.8 58.7 58.7 58.6 58.5 58.5 58.4 58.3 58.2 58.2]; %Vt%
x=V1-V2;
I=[2.01 2.2 2.4 2.6 2.8 3.02 3.22 3.4 3.68 3.9 4.17 4.68 4.98 5.15 5.66];
[a y] = lineReg(I, x)
eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);
hold on
plot(I,x,'*','LineWidth',2);
plot(I, a.*I+y,'LineWidth',2),xlabel('Battery Current (A)','FontWeight','bold'),ylabel('V_{oc}-V_{t}(V)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('SOC=45.88%','FontWeight','bold'), grid on;
annotation('textbox', [.6 .2 .25 .1], 'String', ...
                    ['R_{internal} = 0.2483','\Omega'],'FontWeight','bold','BackgroundColor','white'),
                annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
legend('Raw','Fitted')
hold off