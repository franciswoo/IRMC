%This program use a Z-Y-X(alpha-beta-gamma) representation to calulate a
%rotation matrix R
%i) alpha = 10, beta = 20, gamma = 30
%ii)alpha = 30, beta = 90, gamma = -55
clc;
close all;
clear;
r1 = rotz(10*pi/180) * roty(20*pi/180) * rotx(30*pi/180);
r2 = rotz(30*pi/180) * roty(90*pi/180) * rotx(-55*pi/180);
disp(' i)r1:')
disp(r1)
disp('ii)r2')
disp(r2)