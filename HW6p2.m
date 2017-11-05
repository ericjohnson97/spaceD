%Eric Johnson emj774
%ASE 366k homework 6: orbit propagation
clc; clear all;
close all;
%problem 2.) propagate the orbit for 3 periods with J2 perturbations
%A.)
ro = [-140.879, 6715.125, 1291.458]; %km
vo = [7.472003, .511221, -1.4448890]; %km/s
mu = 398600.4415;
Re = 6378.1363; %km
y = [ro , vo];
ht = 20; %step size for t
t=0:ht:86400;
J2 = 0.00108248;


[T,Y] = ode45('funcJ',t,y);

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

figure(1)
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

%B.) 
[a,e,i,OMEGA,omega,theta] = cart2kep_Johnson(ro,vo,mu);
p = a*(1-e^2);
dOMEGA = -(3/2)*( (sqrt(mu)*J2*Re^2)/(((1-e^2)^2)*a^(7/2)) ) * cos(i) %units?

r = norm(ro);
rt = sqrt(Y(:,1).^2 + Y(:,2).^2 + Y(:,3).^2);
vt = sqrt(Y(:,4).^2 + Y(:,5).^2 + Y(:,6).^2);
U = (mu./rt) - ( ((mu./rt).*(J2/2).*(Re./rt).^2) .*(3.*(Y(:,3)./rt).^2 - 1) ); %minus?

Eo = ((vt(1)^2)/2) - (mu/rt(1));
Et = ((vt.^2)/2) - (mu./rt);
figure(2)
title('Change in Specific Energy');
xlabel(' Time [s]');
ylabel('Delta Specific Energy [km^2/s^2]');
hold on
plot(t, Eo - Et);

