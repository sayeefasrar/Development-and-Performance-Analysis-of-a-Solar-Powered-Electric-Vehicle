Speed=[21.3 22.9 29.3 37.8 49.1 52.6 53.6 54 55.6 56.2];
Magnetic_field=[37.3 37.9 37.7 37.4 37.6 39.3 38.5 38.4 36.8 38.6];

hold on;
figure(9)
h9=plot(Speed,Magnetic_field),legend('Third Data Set')
grid on
xlabel('Speed(Km/h)','FontWeight','bold')
ylabel('Magnetic Field Strength(\muT)','FontWeight','bold')
title('Speed vs. Magnetic Field Strength Characterictics while Acceleration','FontWeight','bold')
set([h8 h9], 'Parent',get(h7,'Parent'))