clc;
clear all;
close all;
SOC=[100 88.38 78.38 68.38 58.38 48.38 38.38 28.38 20.88 10.88];
Voc=[63.0 62.4 61.0 60.4 60.1 60.0 59.6 59.2 58.7 58.4];

[x y] = lineReg(SOC, Voc)
eqn = sprintf('V_{OC}= %.4f*SOC + %.4f', x, y);
hold on
plot(SOC,Voc,'*','LineWidth',2),xlabel('SOC(%)','FontWeight','bold'),ylim([57 63.5]),ylabel('V_{OC}(V)','FontWeight','bold'),,set(gca,'FontWeight','bold'),title('SOC vs. V_{OC}','FontWeight','bold');
SOC = 0:100;
plot(SOC, x.*SOC+y,'LineWidth',2),grid on,annotation('textbox', [.55 .11 .35 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
legend('Raw','Fitted');
hold off
