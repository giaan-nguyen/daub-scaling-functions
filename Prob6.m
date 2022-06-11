%% DAUB-4
h = [1+sqrt(3), 3+sqrt(3), 3-sqrt(3), 1-sqrt(3)] / (4*sqrt(2));
f0 = @(x) rectangularPulse(x);
f1 = @(x) sqrt(2)* (h(1)*f0(2*x)+h(2)*f0(2*x-1)+h(3)*f0(2*x-2)+h(4)*f0(2*x-3)); 
f2 = @(x) sqrt(2)* (h(1)*f1(2*x)+h(2)*f1(2*x-1)+h(3)*f1(2*x-2)+h(4)*f1(2*x-3)); 
f3 = @(x) sqrt(2)* (h(1)*f2(2*x)+h(2)*f2(2*x-1)+h(3)*f2(2*x-2)+h(4)*f2(2*x-3)); 
f4 = @(x) sqrt(2)* (h(1)*f3(2*x)+h(2)*f3(2*x-1)+h(3)*f3(2*x-2)+h(4)*f3(2*x-3)); 
f5 = @(x) sqrt(2)* (h(1)*f4(2*x)+h(2)*f4(2*x-1)+h(3)*f4(2*x-2)+h(4)*f4(2*x-3)); 
disp("Plotting Daub-4 scaling function.... This may take a few minutes.");
ezplot(f5,[0 3],figure(1)); % may take awhile to plot
title 'Daub-4 Scaling Function (After 5 Iterations)'
xlabel 'x'; ylabel '\eta_{5}(x)'

%% DAUB 9/7
h = [-0.064539, -0.040690, 0.418092, 0.788485, 0.418092, -0.040690, -0.064539];
f0 = @(x) rectangularPulse(x);
f1 = @(x) sqrt(2)* (h(1)*f0(2*x)+h(2)*f0(2*x-1)+h(3)*f0(2*x-2)+h(4)*f0(2*x-3)+h(5)*f0(2*x-4)+h(6)*f0(2*x-5)+h(7)*f0(2*x-6)); 
f2 = @(x) sqrt(2)* (h(1)*f1(2*x)+h(2)*f1(2*x-1)+h(3)*f1(2*x-2)+h(4)*f1(2*x-3)+h(5)*f1(2*x-4)+h(6)*f1(2*x-5)+h(7)*f1(2*x-6)); 
f3 = @(x) sqrt(2)* (h(1)*f2(2*x)+h(2)*f2(2*x-1)+h(3)*f2(2*x-2)+h(4)*f2(2*x-3)+h(5)*f2(2*x-4)+h(6)*f2(2*x-5)+h(7)*f2(2*x-6)); 
f4 = @(x) sqrt(2)* (h(1)*f3(2*x)+h(2)*f3(2*x-1)+h(3)*f3(2*x-2)+h(4)*f3(2*x-3)+h(5)*f3(2*x-4)+h(6)*f3(2*x-5)+h(7)*f3(2*x-6)); 
disp("Plotting Daub 9/7 scaling function.... This may take a few minutes.");
figure(2);
ezplot(f4,[0 6],figure(2)); % may take awhile to plot
title 'Daub 9/7 Scaling Function (After 4 Iterations)'
xlabel 'x'; ylabel '\eta_{4}(x)'

%% Print plots
set(gcf,'PaperPositionMode','auto')
print(figure(1),"Daub4",'-dpng','-r0')
print(figure(2),"Daub97",'-dpng','-r0')