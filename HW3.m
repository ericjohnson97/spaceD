clc; clear all;
close all;
%HW3
%4.) Plot orbit with different eccentricity
%equation:
u = 398600;
R=6300;
rp = 8000;
theta = 0:.01:2*pi;
figure(1)
circle(0,0,R);
hold on
for e=0:.2:.8
    C = 8000.*(1+e);
    r = C * ( 1 ./ (1 + e*cos(theta)));
    x=r.*cos(theta);
    y=r.*sin(theta);
    
    figure(1)
    plot(x,y);
    hold on
end
legend('show','earth','0','.2','.4','.6', '.8');
title('Planer Orbits with Varying Eccentricity ');
xlabel(' X position in [km]');
ylabel(' Y position in [km]');
hold off


function circle(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
plot(xunit, yunit,'g');
hold on
end

