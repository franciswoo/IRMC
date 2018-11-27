clear
clc

BP = [1 0 1]';
APB = [3 0 1]';

AP = APB - roty(20) * BP;

disp('AP: ')
disp(AP)