clc;
clear all;
close all;
V1=59.3;%Voc%
V2=[58.8 58.4 58.3 58.2 58.1 58.0 57.9 57.8 57.8 57.7 57.6 57.5 57.4 57.4]; %Vt%
x=V1-V2;
I=[2.0 2.15 2.37 2.69 2.99 3.22 3.42 3.66 4.02 4.25 4.64 4.81 5.04 5.34];
[a y] = lineReg(I, x)
eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);
hold on
plot(I,x,'*','LineWidth',2);
plot(I, a.*I+y,'LineWidth',2),xlabel('Battery Current (A)','FontWeight','bold'),ylabel('V_{oc}-V_{t}(V)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('SOC=30.88%','FontWeight','bold'), grid on;
annotation('textbox', [.6 .2 .25 .1], 'String', ...
                    ['R_{internal} = 0.3581','\Omega'],'FontWeight','bold'),
                annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
legend('Raw','Fitted')
hold off