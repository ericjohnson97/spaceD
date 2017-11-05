%Eric Johnson emj774
%ASE 366k homework 6: orbit propagation
clc; clear all;
close all;
%problem 1.) propagate the orbit for 3 periods with no perturbations
%A.)

ro = [-140.879, 6715.125, 1291.458]; %km
vo = [7.472003, .511221, -1.4448890]; %km/s
mu = 398600.4415;

[a,e,i,OMEGA,omega,theta] = cart2kep_Johnson(ro,vo,mu);
T = 2*pi*sqrt(a^3/mu);

ht = 20; %step size for t
t=0:ht:T*3;
y = [ro , vo];

[T,Y] = ode45('func',t,y);

rt = sqrt(Y(:,1).^2 + Y(:,2).^2 + Y(:,3).^2);
vt = sqrt(Y(:,4).^2 + Y(:,5).^2 + Y(:,6).^2);
ax = -(mu./(rt.^3)).*Y(:,1);
ay = -(mu./(rt.^3)).*Y(:,2);
az = -(mu./(rt.^3)).*Y(:,3);
at = sqrt(ax.^2 + ay.^2 + az.^2);

figure(1)
subplot(3,1,1);
title('Time vs Magnitude of Position');
xlabel(' Time [s]');
ylabel('Position [km]');
hold on
plot(t, rt);
subplot(3,1,2);
title('Time vs Magnitude of Velocity');
xlabel(' Time [s]');
ylabel('Velocity [km/s]');
hold on
plot(t, vt);
subplot(3,1,3);
title('Time vs Magnitude of Acceleration');
xlabel(' Time [s]');
ylabel('Acceleration [km/s^2]');
hold on
plot(t, at);

%B.)
Eo = ((vt(1)^2)/2) - (mu/rt(1));
Et = ((vt.^2)/2) - (mu./rt);

figure(2)
title('Change in Specific Energy');
xlabel(' Time [s]');
ylabel('Delta Specific Energy [km^2/s^2]');
hold on
plot(t, Eo - Et);

%C.)
rVect = [Y(:,1),Y(:,2),Y(:,3)];
vVect = [Y(:,4),Y(:,5),Y(:,6)];
for j=1:length(t)
   
   [a,e,i,OMEGA,omega,theta] = cart2kep_Johnson(rVect(j,:),vVect(j,:),mu);
   sAxis(j) = a; 
   et(j) = e;
   it(j) = i;
   OMEGAt(j) = OMEGA;
   omegat(j) = omega;
   thetat(j) = theta;
   
end

figure(3)
subplot(3,2,1);
title('Time vs Semi Major Axis');
xlabel(' Time [s]');
ylabel('Position [km]');
hold on
plot(t, sAxis);
subplot(3,2,2);
title('Time vs Eccentricity');
xlabel(' Time [s]');
ylabel('Eccentricity');
hold on
plot(t, et);
subplot(3,2,3);
title('Time vs Inclination');
xlabel(' Time [s]');
ylabel('Inclination [rad]');
hold on
plot(t, it);
subplot(3,2,4);
title('Time vs Right Accension of Acending Node');
xlabel(' Time [s]');
ylabel('Accension of Acending Node [rad]');
hold on
plot(t, OMEGAt);
subplot(3,2,5);
title('Time vs Argument of Pariapse');
xlabel(' Time [s]');
ylabel('Argument of Pariapse  [rad]');
hold on
plot(t, omegat);










