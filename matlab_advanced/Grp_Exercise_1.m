figure(1)
Aplot = findobj(subplot(2,2,1));
Aplot_lines = Aplot(2:3);
set(Aplot_lines, 'Linewidth', 2);
set(Aplot_lines(1),'color',[0 0 0]);
set(Aplot_lines(2),'color',[1 0 0]);
set(Aplot(1),'ylim',[0 2*pi]);

Bplot = findobj(subplot(2,2,2));
set(Bplot(1), 'xlim', [-1 1], 'ylim', [-1 1]);
set(Bplot(2), 'marker', 'diamond');
set(Bplot(2), 'Linewidth', 2);

figure(2)
subplot(1,2,1);
plot(Bplot(2).XData);
subplot(1,2,2);
plot(Bplot(2).YData);

figure(1)
Cplot = findobj(subplot(2,2,3));
set(Cplot(2), 'facecolor', 'none');
set(Cplot(1), 'XTick', [], 'YTick', [], 'XTickLabel', [], 'YTickLabel', []);

Dplot = findobj(subplot(2,2,4));
set(Dplot(2), 'LineWidth', 1);
set(Dplot(2), 'marker', 'pentagram');
set(Dplot(2), 'MarkerEdgeColor', 'yellow');
set(Dplot(2), 'MarkerFaceColor', 'black');
set(Dplot(1).Title , 'String', 'PLOT D: This is a wonderful helix');
Dplot(1).CameraPosition = [6 6 6];


