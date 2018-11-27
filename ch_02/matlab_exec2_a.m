%i)alpha=10�� beta=20�� gamma=30�� A^Pb = [1 2 3]'
%ii)beta=20�� A^Pb = [3 0 1]'

clear
clc

rot1 = rotx(30) * roty(20) * rotz(10);
trans1 = [rot1(1,:) 1; rot1(2,:) 2; rot1(3,:) 3; 0 0 0 1];

rot2 = rotx(0) * roty(20) * rotz(0);
trans2 = [rot2(1,:) 3; rot2(2,:) 0; rot2(3,:) 1; 0 0 0 1];

disp('i):')
disp(trans1)
disp('ii):')
disp(trans2)