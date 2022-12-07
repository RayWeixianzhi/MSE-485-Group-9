subplot(2,2,1);
hold on
for i = 1:width(A)
    plot(time,A(:,i))
end
xlabel('Simulation Time / ns')
ylabel('Z-coordinate of P in lipid')
title('Tail Length = 2 Carbons')

subplot(2,2,2);
hold on
for i = 1:width(B)
    plot(time,B(:,i))
end
xlabel('Simulation Time / ns')
ylabel('Z-coordinate of P in lipid')
title('Tail Length = 4 Carbons')

subplot(2,2,3);
hold on
for i = 1:width(C)
    plot(time,C(:,i))
end
xlabel('Simulation Time / ns')
ylabel('Z-coordinate of P in lipid')
title('Tail Length = 6 Carbon')

subplot(2,2,4);
hold on
for i = 1:width(D)
    plot(time,D(:,i))
end
xlabel('Simulation Time / ns')
ylabel('Z-coordinate of P in lipid')
title('Tail Length = 8 Carbon')
sgtitle('Lipid trajectory vs Time for different tail lengths')