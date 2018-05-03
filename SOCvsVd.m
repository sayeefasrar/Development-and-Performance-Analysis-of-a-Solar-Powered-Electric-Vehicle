clc;
clear all;
close all;
SOC=[10.88 30.88 45.88 55.88 65.88 83.38 88.38];
Vd=[.3429 .0841 .3684 0.0080 .0134 .1225 .6305];
%%[a y] = lineReg(SOC, Vd);
hold on
plot(SOC,Vd,'*','LineWidth',2),xlabel('SOC(%)','FontWeight','bold'),ylabel('V_{d}(V)','FontWeight','bold'),set(gca,'FontWeight','bold'),title('V_{d} vs. SOC','FontWeight','bold'),grid on,xlim([0 100]);
%SOC = 0:100;
%plot(SOC, a.*SOC+y);
%drawaxis(gca, 'x', 0),grid on