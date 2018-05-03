Speed=[48.11 43.11 37.45 37.12 29.88 29.68 23.77]; 
Current=[4.1 2.6 2.9 2.8 2.3 2.3 2.3];

hold on;
figure(4)
h4=plot(Speed,Current,'green'),grid on,set ( gca, 'xdir', 'reverse' ),xlabel('Speed(Km/h)','FontWeight','bold'),ylabel('Current(A)','FontWeight','bold'),title('Speed vs. Current Characterictics while Deceleration','FontWeight','bold'),legend('First Data Set')