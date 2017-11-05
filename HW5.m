%Problem 3 
clc; clear all
fprintf('Problem 3.)\n')
fprintf('a.)\n');
mu = 1;
rVec = [-.35449, 1.3951, -.43398];
vVec = [.46978, .86112, -.18631];
[a,e,i,OMEGA,omega,theta] = cart2kep_Johnson(rVec,vVec,mu);
fprintf('a = %.5f [DU]\n',a);
fprintf('e = %.5f \n',e);
fprintf('i = %.5f [rad]\n',i);
fprintf('OMEGA = %.5f [rad]\n',OMEGA);
fprintf('omega = %.5f [rad]\n',omega);
fprintf('theta = %.5f [rad]\n',theta);

fprintf('b.)\n');
mu = 398600.4415;
rVec = [186.43, 17185.38, -3240.20];
vVec = [-2.95184, .72211, 3.36895];
units = ['[km]','','[rad]','[rad]','[rad]','[rad]'];
[a,e,i,OMEGA,omega,theta] = cart2kep_Johnson(rVec,vVec,mu);
fprintf('a = %.5f [km]\n',a);
fprintf('e = %.5f \n',e);
fprintf('i = %.5f [rad]\n',i);
fprintf('OMEGA = %.5f [rad]\n',OMEGA);
fprintf('omega = %.5f [rad]\n',omega);
fprintf('theta = %.5f [rad]\n',theta);

fprintf('c.)\n');
mu = 398600.4415;
rVec = [21000*sqrt(2), 21000*sqrt(2), 0];
vVec = [ -.05*sqrt(mu/210), .05*sqrt(mu/210), 0];
units = ['[km]','','[rad]','[rad]','[rad]','[rad]'];
[a,e,i,OMEGA,omega,theta] = cart2kep_Johnson(rVec,vVec,mu);
fprintf('a = %.5f [km]\n',a);
fprintf('e = %.5f \n',e);
fprintf('i = %.5f [rad]\n',i);
fprintf('OMEGA = %.5f [rad]\n',OMEGA);
fprintf('omega = %.5f [rad]\n',omega);
fprintf('theta = %.5f [rad]\n',theta);




% %%% Problem 4
fprintf('\nProblem 4.)\n');
fprintf('a.)\n');
a = 8900;
e = .15761;
mu = 398600.4415;
i = (174.71)*(pi/180);
OMEGA = 172.29 * (pi/180);
omega = 87.37 * (pi/180);
theta = 144.05 * (pi/180);
[r,v] = kep2cart_Johnson(a,e,mu,i,OMEGA,omega,theta);
fprintf('r = <%g, %g, %g> [km]\n', r);
fprintf('v = <%g, %g, %g> [km/s]\n', v);

fprintf('b.)\n');
a = 28063;
e = .14189;
mu = 398600.4415;
i = (75.92)*(pi/180);
OMEGA = 164.83 * (pi/180);
omega = 142.6 * (pi/180);
theta = 172.71 * (pi/180);
[r,v] = kep2cart_Johnson(a,e,mu,i,OMEGA,omega,theta);
fprintf('r = <%g, %g, %g> [km]\n', r);
fprintf('v = <%g, %g, %g> [km/s]\n', v);

