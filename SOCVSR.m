clc;
close all;
clear all;
SOC=[10.88 30.88 45.88 55.88 65.88 83.38 88.38];
R=[.3410 .3581 .2483 .3339 .2957 .2720 .2189];
[a y] = lineReg(SOC, R)
eqn = sprintf('R_{internal}= %.4f*SOC + %.4f', a, y);
hold on
plot(SOC,R,'*','LineWidth',2);
SOC = 0:100;
plot(SOC, a.*SOC+y,'LineWidth',2);xlabel('SOC(%)','FontWeight','bold'),ylabel('R_{internal}(\Omega)','FontWeight','bold'),set(gca,'FontWeight','bold'),title('R_{internal} vs. SOC','FontWeight','bold'),grid on,legend('Raw','Fitted'),
  annotation('textbox', [.15 .11 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
