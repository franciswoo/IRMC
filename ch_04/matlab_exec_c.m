%Check all results by means of the Corke MATLAB Robotics Toolbox. Try function
%ikineQ.
%i): 
TH1 = [1 0 0 9;
       0 1 0 0;
       0 0 1 0;
       0 0 0 1];
%ii): 
TH2 = [0.5 -0.866 0 7.5373;
       0.866 0.6 0 3.9266;
       0 0 1 0;
       0 0 0 1];
%iii): 
TH3 = [0 1 0 -3;
      -1 0 0 2;
       0 0 1 0;
       0 0 0 1];
%iv): 
TH4 = [0.866 0.5 0 -3.1245;
       -0.5 0.866 0 9.1674;
       0 0 1 0;
       0 0 0 1];

% RRR mechanic
% syms L1 L2 L3 th1 th2 th3
L1 = 4; L2 = 3; L3 = 2;
alpha1 = 0; a1 = 0; theta1 = 0; d1 = 0;
alpha2 = 0; a2 = L1; theta2 = 0; d2 = 0;
alpha3 = 0; a3 = L2; theta3 = 0; d3 = 0;
alpha4 = 0; a4 = L3; theta4 = 0; d4 = 0;
T1 = Link('alpha', alpha1, 'a', a1, 'd',d1, 'modified');
T2 = Link('alpha', alpha2, 'a', a2, 'd',d2, 'modified');
T3 = Link('alpha', alpha3, 'a', a3, 'd',d3, 'modified');
T4 = Link('alpha', alpha4, 'a', a4, 'd',d4, 'modified');
RRR = SerialLink([T1 T2 T3 T4], 'name', 'RRR');

disp(RRR.ikine(TH1,'mask',[1 1 1 1 0 0]));
disp(RRR.ikine(TH2,'mask',[1 1 1 1 0 0]));
disp(RRR.ikine(TH3,'mask',[1 1 1 1 0 0]));
% RRR.ikine(TH4,'mask',[1 1 1 1 0 0]);