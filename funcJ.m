function ydot = funcJ(t,y)

%y = [x, y, z, vx, vy, vz]
%ydot = [vx, vy, vz, ax, ay, az]
mu = 398600.4415;
Re = 6378.1363; %km
J2 = 0.00108248;
r = sqrt( y(1).^2 + y(2).^2 + y(3).^2 );
ydot(1) = y(4);
ydot(2) = y(5);
ydot(3) = y(6);

ydot(4) = -((mu*y(1))/(r^3))*(1 - J2*(2/3)*((Re/r)^2)*(5*(y(3)/r)^2 - 1));
ydot(5) = -((mu*y(2))/(r^3))*(1 - J2*(2/3)*((Re/r)^2)*(5*(y(3)/r)^2 - 1));
ydot(6) = -((mu*y(3))/(r^3))*(1 - J2*(2/3)*((Re/r)^2)*(5*(y(3)/r)^2 - 3));

ydot = ydot';