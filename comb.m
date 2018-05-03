%%hold off
%figure(1)
%plot(Speed,Current),legend('First Data Set')
%hold off
%figure(2)
%plot(Speed,Current),legend('Second Data Set')
%L = findobj(1,'type','line');
%copyobj(L,findobj(2,'type','axes'));
figure(1); h1 = plot(Speed,Current);
figure(2); h2 = plot(Speed,Current);
figure(3); h3 = plot(Speed,Current);
h = copyobj([h2 h3],get(h1,'Parent'));