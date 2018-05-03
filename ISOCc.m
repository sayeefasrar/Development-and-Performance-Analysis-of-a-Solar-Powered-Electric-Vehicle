clc;
clear all;
close all;
VOC=[58.8 59 59.7 ];

SOC=[10:9.930486594:9.930486594*8 72.06552165 72.06552165:9.930486594:100 ]
%[a y] = lineReg(I, x)
%eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);

hold on

%plot(I,x,'*','LineWidth',2);
plot(SOC,I,'LineWidth',2),xlabel('Time(Hours)','FontWeight','bold'),ylabel('SOC(%)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('Current Vs. SOC','FontWeight','bold'), grid on,xlim([0 100]);
%annotation('textbox', [.6 .2 .25 .1], 'String', ...
                   % ['R_{internal} = 0.2189','\Omega'],'FontWeight','bold','BackgroundColor','white'),
                %annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
%legend('Raw','Fitted'),set(legend,'fontweight','bold')
