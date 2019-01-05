function link = T(abbr, a, theta, d)

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

link = Rx_abbr * Dx * Rz_theta * Dz;

end