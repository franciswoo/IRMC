%Derivation of homogeneous transformation matrix T
syms abbr a theta d

Rx_abbr = [1         0          0 0;
           0 cos(abbr) -sin(abbr) 0;
           0 sin(abbr) cos(abbr)  0;
           0         0          0 1];
       
Dx = [1 0 0 a;
      0 1 0 0;
      0 0 1 0;
      0 0 0 1];

Rz_theta = [cos(theta) -sin(theta) 0 0;
            sin(theta)  cos(theta) 0 0;
                    0           0  1 0;
                    0           0  0 1];
Dz = [1 0 0 0;
      0 1 0 0;
      0 0 0 d;
      0 0 0 1];

T = Rx_abbr * Dx * Rz_theta * Dz;

%constant matrix of 3_H_T
T_3_H = [1 0 0 2;
         0 1 0 0;
         0 0 1 0;
         0 0 0 1];