clear all
eccenVals = 0.0:0.2:0.8;
rP = 8000.0;
rE = 6300.0;
thetaVals = 0.0:0.01:2*pi;
figure()
for ii = 1:length(eccenVals)
    semilatusRectum = rP.*(1+eccenVals(ii));    
    radVals = semilatusRectum./(1+eccenVals(ii).*cos(thetaVals));    
    xVals = radVals.*cos(thetaVals);    
    yVals = radVals.*sin(thetaVals);    
    plot( xVals./1000, yVals./1000, 'linewidth', 2 )    
    hold on
end
xVals = rE.*cos(thetaVals);yVals = rE.*sin(thetaVals);
plot( xVals./1000, yVals./1000, 'k', 'linewidth', 3 )
leg = legend({'e = 0.0','e = 0.2','e = 0.4','e = 0.6','e = 0.8'});
set(leg,'location','northwest','fontsize',14)
axis equal
grid on
set(gca,'fontsize',14)
xlabel( 'Position Along Semi-major Axis [x1000 km]' )
ylabel( 'Position Along Semi-minor Axis [x1000 km]' )