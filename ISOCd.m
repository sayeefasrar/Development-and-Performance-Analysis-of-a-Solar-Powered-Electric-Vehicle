clc;
clear all;
close all;
I=[4.05 4.02 4.04 4.03 3.99 4.03 4.05 4.03 4.02 4 4.01 4.03 4.01 3.99 4 4.02 4.02 4.05 4.01 4.03 4 4.05 4.03 3.98 4.03];
SOC=[95.91:-3.326713009:10];
%[a y] = lineReg(I, x)
%eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);

hold on

%plot(I,x,'*','LineWidth',2);
plot(SOC,I,'LineWidth',2),xlabel('Time(Hours)','FontWeight','bold'),ylabel('SOC(%)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('Current Vs. SOC','FontWeight','bold'), grid on,xlim([0 100]);
