function theta = ikine(T)
%IKINE 此处显示有关此函数的摘要
% T - SE3 
syms L1 L2 L3
L1 = 4; L2 = 3; L3 = 2;
E1 = [1 0 0 -L3; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T = T * E1;
x = T(1,4); y = T(2,4);
c2 = (x^2+y^2 - L1^2-L2^2)/(2*L1*L2);
if c2 > 1 || c2 < -1
    disp('No Solution')
    theta = [NaN NaN NaN];
else
    s2 = sqrt(1-c2^2);
    th2 = atan2(s2, c2);

    k1 = L1 + L2*cos(th2); k2 = L2*sin(th2);
    r = sqrt(k1^2 + k2^2);
    th1 = atan2(y/r, x/r) - atan2(k2, k1);

    R21 = T(2,1); R22 = T(2,2);
    phi = atan2(R21, R22);
    th3 = phi - th1 - th2;

    theta = [th1 th2 th3];
end
end

