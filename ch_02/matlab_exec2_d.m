clear
clc

%matlab_exec2_a i):
ABT = rotx(30) * roty(20) * rotz(10);
%%matlab_exec2_a ii):
BCT = rotx(0) * roty(20) * rotz(0);

%i):
ACT = ABT * BCT;
disp('ACT: ')
disp(ACT)

%ii):
ABT2 = ACT * inv(BCT);
disp('ABT2: ')
disp(ABT2)

%iii):
BCT2 = inv(ABT) * ACT;
disp('BCT2: ')
disp(BCT2)