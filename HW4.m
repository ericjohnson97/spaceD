%homework 4
%problem 2

clc; clear all
close all
fprintf('\nPROBLEM 2\n');
u = 398600;
rEarth = 6378.1363;
%problem 2
r = [ -17130, 39, -784 ];
v = [ -.251, -2.8270, 3.754];
[h,e,eMag,a] = calcKeplerParams(r,v,u); 
fprintf('A.) \n');
fprintf('the eccentricity e=%f so eliptical \n',eMag);
%PART B
[E,Me,theta] = calcAnomalies(eMag,e,r,a);
%PART D 
t = 0:500:40000;
[theta, r, v] = calcThetaRV(t,Me,E,eMag,a,r,v,theta,u);
figure(1)
subplot(1,3,1)
title('Time vs Radius');
xlabel(' Time [s]');
ylabel('Radius [km]');
hold on
plot(t,r)

subplot(1,3,2)
title('Time vs velocity');
xlabel(' Time [s]');
ylabel('Velocity [km/s]');
hold on
plot(t,v)

subplot(1,3,3)
title('Time vs True Anomaly');
xlabel(' Time [s]');
ylabel('Anomaly [rad]');
hold on
plot(t,theta)

%part e

energy0 = ( u / (2*a) );
energyt = (v.^2 ./2) - (u ./r);
denergy = energyt - energy0;
figure(2)
title('Time vs Change in Specific Energy v Time');
xlabel(' Time [s]');
ylabel(' Change Specific Energy [km^2 / s^2]');
plot(t,denergy)
hold on



clear all;
u = 398600;
rEarth = 6378.1363;

%problem 3
pause(1)
fprintf('\nPROBLEM 3\n');
r = [ 0, -10389, -21519];
v = [ -4.0842, -1.4206, 2.9424];
[h,e,eMag,a] = calcKeplerParams(r,v,u); 
fprintf('A.) \n');
fprintf('the eccentricity e=%f so eliptical \n',eMag);
%PART B
[E,Me,theta] = calcAnomalies(eMag,e,r,a);
%PART D 
t = 0:500:345000;
[theta, r, v] = calcThetaRV(t,Me,E,eMag,a,r,v,theta,u);
figure(3)
subplot(1,3,1)
title('Time vs Radius');
xlabel(' Time [s]');
ylabel('Radius [km]');
hold on
plot(t,r)

subplot(1,3,2)
title('Time vs velocity');
xlabel(' Time [s]');
ylabel('Velocity [km/s]');
hold on
plot(t,v)

subplot(1,3,3)
title('Time vs True Anomaly');
xlabel(' Time [s]');
ylabel('Anomaly [rad]');
hold on
plot(t,theta)

%part e

energy0 = ( u / (2*a) );
energyt = (v.^2 ./2) - (u ./r);
denergy = energyt - energy0;
figure(4)
title('Time vs Change in Specific Energy v Time');
xlabel(' Time [s]');
ylabel(' Change Specific Energy [km^2 / s^2]');
plot(t,denergy)
hold on

%problem 4
pause(1)
fprintf('\nPROBLEM 3\n');
r = [ 0, 39991, -52979];
v = [ -3.5511, 0, 0];
[h,e,eMag,a] = calcKeplerParams(r,v,u); 
fprintf('A.) \n');
fprintf('the eccentricity e=%f so hyperbolic \n',eMag);
%PART B
[E,Me,theta] = calcAnomalies(eMag,e,r,a);
%PART D 
t = -20000:500:20000;
[theta, r, v] = calcThetaRV(t,Me,E,eMag,a,r,v,theta,u);
figure(5)
subplot(1,3,1)
title('Time vs Radius');
xlabel(' Time [s]');
ylabel('Radius [km]');
hold on
plot(t,r)

subplot(1,3,2)
title('Time vs velocity');
xlabel(' Time [s]');
ylabel('Velocity [km/s]');
hold on
plot(t,v)

subplot(1,3,3)
title('Time vs True Anomaly');
xlabel(' Time [s]');
ylabel('Anomaly [rad]');
hold on
plot(t,theta)

%part e

energy0 = ( u / (2*a) );
energyt = (v.^2 ./2) - (u ./r);
denergy = energyt - energy0;
figure(6)
title('Time vs Change in Specific Energy v Time');
xlabel(' Time [s]');
ylabel(' Change Specific Energy [km^2 / s^2]');
plot(t,denergy)
hold on


