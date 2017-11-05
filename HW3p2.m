clc; clear all;
close all;
%HW3
%6.)

r = [ -1.1545, 1.2795, -.38590];
v = [ -.52992, -.22663, .48960];
u = 1;

h = cross(r,v);
energy = ( (norm(v)^2) / 2) - u/norm(r);
E = (cross(v,h) / u ) - (r/norm(r));
theta = acos( ((norm(h)^2) / (u*norm(r))) -1 ); 
e = norm(E);
a = 1/( 2 * norm(energy));
rp = a*(1-e);
ra = 2*a - rp;
fprintf('a.) %g %g %g [DU^2 / TU ] \n', h);
fprintf('b.) %g [DU^2 / TU^2 ]\n', energy);
fprintf('c.) %g %g %g \n', E);
fprintf('d.) %g [rad]\n', theta);
fprintf('e.) %g\n', e);
fprintf('f.) %g [DU]\n', a);
fprintf('g.) %g [DU]\n', rp);
fprintf('h.) %g [DU]\n\n\n', ra);
fprintf('problem 7\n');


theta = [ 1:360 ];
theta = theta * ( pi/180);
figure(1)
for i=1:360
    r(i) = (norm(h)^2/u) * ( 1 /( 1 + e*cos(theta(i)) ) );
    v = norm(h)/r(i);
    kinetic(i) = ( (norm(v)^2) / 2);
    potential(i) = - ( u/ r(i));
    
end
cpEnergy = ones(1,360) * energy;
hold on
title(' Energy Varying With True Anomaly ');
xlabel(' True Anomaly  [degrees]');
ylabel(' Specific Potential Energy [DU^2 / TU^2]');
plot([1:360], kinetic);
hold on
plot([1:360], potential);
hold on
plot([1:360], cpEnergy);
hold on 
legend('show','kinetic energy', 'potential energy', 'total energy', 'location', 'southoutside');
hold off

