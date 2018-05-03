Speed=[20.19 21.12 21.45 21.59 21.64 29.49 33 34.22 46.12 47.88 48.11]; 
Magnetic_field=[28.7 28.6 34.3 29.3 30.3 38.4 40.7 29.9 47.5 38.4 35.6];

hold on;
figure(7)
h7=plot(Speed,Magnetic_field,'green'),legend('First Data Set')
grid on
xlabel('Speed(Km/h)','FontWeight','bold')
ylabel('Magnetic Field Strength(\muT)','FontWeight','bold')
title('Speed vs. Magnetic Field Strength Characterictics while Acceleration','FontWeight','bold')