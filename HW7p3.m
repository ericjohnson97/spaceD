Re = 6378.1363;
f = .003353;

phiGd = 30.2673 * (pi/180);
lambda = 97.7431;
H = 0;

Recf = [( (Re)/(sqrt(1-(2*f-f^2)*(sin(phiGd)^2)) ) + H)*cos(phiGd) *cos(lambda), ( (Re)/(sqrt(1-(2*f-f^2)*(sin(phiGd)^2)) ) + H)*cos(phiGd) *sin(lambda), ( (Re)/(sqrt(1-(2*f-f^2)*(sin(phiGd)^2)) ) + H)*cos(phiGd) *sin(phiGd) ] 
r = [-2022.569, -5071.476, 3030.804];

rrel = r - Recf



