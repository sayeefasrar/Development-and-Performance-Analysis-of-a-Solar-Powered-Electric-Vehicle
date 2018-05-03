Speed=[51.02 50.46 49.58 33.68]; 
Current=[6.3 4.4 4.5 1.8];

hold on;
figure(5)
h5=plot(Speed,Current,'black'),grid on,set ( gca, 'xdir', 'reverse' ),xlabel('Speed(Km/h)','FontWeight','bold'),ylabel('Current(A)','FontWeight','bold'),title('Speed vs. Current Characterictics while Deceleration','FontWeight','bold'),legend('Second Data Set')