%homework 8
clc; clear all
close all

mu = 398600;
Re = 6378;

%part C

r1a = 6828;
r1p = 6728;
a1 = (r1a+r1p)/2

r2 = 7278;
a2 = r2;
rptran = r1a;
ratran = r2;
atran = (r1p + r2)/2;


vTranRp = velOrbit(mu,rptran, atran);
v1a=velOrbit(mu,r1a,r1a);
deltaVa = vTranRp - v1a;

vTranRa = velOrbit(mu,ratran, atran);
v2=velOrbit(mu,r2,r2);
deltaVb = v2 - vTranRa;

deltaVtot = deltaVb + deltaVa

%part d, c is lowest delta v

e1 = (r1a/a1) - 1;
etran = (ratran/atran) - 1;
e2 = 0;

eccenVals = [e1, etran, e2];
rP = [r1p,r1a,r2];
rE = 6378.0;
semilatusRectum = [a1, atran, a2];
figure()
for ii = 1:length(eccenVals)
    thetaVals = 0.0:0.01:2*pi;
    if ( ii == 2)
       thetaVals =  0:0.01:pi;
       
    end
     if ( ii == 3)
       thetaVals =  0:0.01:2*pi;
    end
      
    radVals = semilatusRectum(ii)./(1+eccenVals(ii).*cos(thetaVals));    
    xVals = radVals.*cos(thetaVals);    
    yVals = radVals.*sin(thetaVals);    
    plot( xVals./1000, yVals./1000, 'linewidth', 2 )    
    hold on
end
xVals = rE.*cos(thetaVals);yVals = rE.*sin(thetaVals);
plot( xVals./1000, yVals./1000, 'k', 'linewidth', 3 )
title("Minimum Delta V Hohman Transfer"); 
leg = legend({'orbit 1','transfer orbit','orbit 2','earth'});
set(leg,'location','northwest','fontsize',14)
axis equal
grid on
set(gca,'fontsize',14)
xlabel( 'Position Along Semi-major Axis [x1000 km]' )
ylabel( 'Position Along Semi-minor Axis [x1000 km]' )

