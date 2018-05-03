clc;
clear all;
close all;
V1=60.3;%Voc%
V2=[60.0 59.8 59.7 59.6 59.6 59.5 59.5 59.4 59.3 59.1 59.0 58.9 58.8 58.7]; %Vt%
x=V1-V2
I=[2.0 2.1 2.26 2.39 2.49 2.69 2.79 2.99 3.49 3.9 4.39 4.79 5.1 5.4];
[a y] = lineReg(I, x)
hold on
plot(I,x,'*');
plot(I, a.*I+y),xlabel('Battery Current (A)'),ylabel('V_{oc}-V_{t}(V)'), title('SOC=65.88%'), grid on;
annotation('textbox', [.6 .2 .2 .1], 'String', ...
                    ['R_{internal} = 0.3321','\Omega']);
legend('Raw','Fitted')
hold off