clc;
clear all;
close all;
V1=58.4;%Voc%
V2=[57.4 57.3 57.3 57.3 57.2 57.1 57.1 57.0 56.9 56.8 56.7 56.7 56.6 56.4 56.2]; %Vt%
x=V1-V2;
I=[2.06 2.13 2.30 2.40 2.48 2.75 2.83 3.02 3.32 3.77 3.84 3.93 4.29 4.61 5.70];
[a y] = lineReg(I, x)
eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);
hold on
plot(I,x,'*','LineWidth',2);
plot(I, a.*I+y,'LineWidth',2),
xlabel('Battery Current (A)','FontWeight','bold'),
ylabel('V_{oc}-V_{t}(V)','FontWeight','bold'),
set(gca,'FontWeight','bold')
title('SOC=10.88%','FontWeight','bold'),
grid on;
annotation('textbox', [.6 .2 .25 .1], 'String',['R_{internal} = 0.3410','\Omega'],'FontWeight','bold','BackgroundColor','white'),
annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
legend('Raw','Fitted')
hold off