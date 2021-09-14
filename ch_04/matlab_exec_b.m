%b)Develop a MATLAB program to solve this planar 3R robot inverse-pose kinematics problem completely (i.e., to give all multiple solutions). 
%Test your program,using the following input cases:
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

%i):
i1 = ikine(TH1);
disp('i:')
disp(i1)
%ii):
i2 = ikine(TH2);
disp('ii:')
disp(i2)
%iii):
i3 = ikine(TH3);
disp('iii:')
disp(i3)
%iv):
disp('iv:')
i4 = ikine(TH4);
disp(i4)