clc; clear all;

mu = 398600.4415;
Re = 6378.1363;

Ro = [-140.879, 6715.125, 1291.458];
Vo = [7.472003, .511221, -1.4448890];
dTheta = 76 * (pi/180);

ro = norm(Ro);
vo = norm(Vo);

h = norm(cross(Ro,Vo));

r = (h^2/mu) * ( 1 /( 1+( ((h^2/(mu*ro))-1)*cos(dTheta) - ((h*vo)/mu)*sin(dTheta) )));
f = 1 - ((mu*r)/h^2)*(1-cos(dTheta));
g = ((r*ro)/h)*sin(dTheta);
fdot = (mu/h)*( (1 - cos(dTheta))/(sin(dTheta)) )*( (mu/h^2)*(1 - cos(dTheta))-(1/ro)-(1/r) );
gdot = 1-((mu*ro)/h^2)*(1-cos(dTheta));

rNew = f*Ro + g*Vo
vNew = fdot*Ro + gdot*Vo

%problem 2

Re = 6378.1363;
f = .003353;

phiGd = 30.2673 * (pi/180);
lambda = 97.7431;
H = 0;

Recf = [( (Re)/(sqrt(1-(2*f-f^2)*(sin(phiGd)^2)) ) + H)*cos(phiGd) *cos(lambda), ( (Re)/(sqrt(1-(2*f-f^2)*(sin(phiGd)^2)) ) + H)*cos(phiGd) *sin(lambda), ( (Re)/(sqrt(1-(2*f-f^2)*(sin(phiGd)^2)) ) + H)*cos(phiGd) *sin(phiGd) ] 

rho = 650;
A = 135 * (pi/180);
a = 75 * (pi/180);

x = rho*sin(a)*cos(A);
y = rho*sin(a)*sin(A);
z = rho*cos(a);

rrel = [x,y,z];




