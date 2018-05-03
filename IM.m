%%Test Data 2
Current=[1.5 1.5 1.5 1.6 2.6 2.7 4.1 4.1 4.2 6.3];
M=[28.6 28.7 29.3 30.3 40.7 38.4 38.5 38.6 47.5 87.5 ];
hold off
figure(13)
h13=plot(Current,M,'black'),grid on,legend('First Set of Data'),xlabel('Current(A)','FontWeight','bold'),ylabel('Magnetic Field Strength(\muT)','FontWeight','bold'),title('Magnetic Field Strength vs. Current Characterictics','FontWeight','bold')