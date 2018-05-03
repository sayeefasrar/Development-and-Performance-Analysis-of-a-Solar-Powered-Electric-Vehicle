Speed=[23.77 47.19 49.58 50.46 51.02]; 
Current=[2.3 4.2 4.4 4.5 6.3 ];

hold off;
figure(2)
h2=plot(Speed,Current,'black'),grid on,xlabel('Speed(Km/h)','FontWeight','bold'),ylabel('Current(A)','FontWeight','bold'),title('Speed vs. Current Characterictics while Acceleration','FontWeight','bold'),legend('Second Data Set')