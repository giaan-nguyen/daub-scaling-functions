%% Quick plots using scalingFunction.m
% DAUB-4
h = [1+sqrt(3), 3+sqrt(3), 3-sqrt(3), 1-sqrt(3)] / (4*sqrt(2));
[f,x] = scalingFunction(h,10);
figure(3);
plot(x,f,'b-');
title 'Daub-4 Scaling Function'
%set(gca,'XTick', [])

% DAUB 9/7
h = [-0.064539, -0.040690, 0.418092, 0.788485, 0.418092, -0.040690, -0.064539];
[f,x] = scalingFunction(h,10);
figure(4);
plot(x,f,'b-');
title 'Daub 9/7 Scaling Function'
%set(gca,'XTick', [])

%% Print plots
set(gcf,'PaperPositionMode','auto')
print(figure(3),"Daub4_shape",'-dpng','-r0')
print(figure(4),"Daub97_shape",'-dpng','-r0')