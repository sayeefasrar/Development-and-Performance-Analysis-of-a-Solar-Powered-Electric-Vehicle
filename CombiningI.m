hold off
figure(1)
plot(Speed,Current),legend('First Data Set')
hold off
figure(2)
plot(Speed,Current),legend('Second Data Set')
L = findobj(1,'type','line');
copyobj(L,findobj(2,'type','axes'));

