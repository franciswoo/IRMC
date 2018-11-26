%write a program to calculate a inverse solution(alpha-beta-gamma) of
%rotation matrix.
%Calculate the two possible solutions
%Prove: the inverse solution of Quest a)

clear
clc

% syms a b c
% 
% rotz = [cos(a) -sin(a) 0;
%         sin(a) cos(a) 0;
%         0   0   1];
% 
% roty = [cos(b) 0 sin(b);
%         0   1   0;
%         -sin(b) 0 cos(b)];
%     
% rotx = [1 0 0;
%         0 cos(c) -sin(c);
%         0 sin(c) cos(c)];
%     
% ABR = rotx * roty * rotz;
% disp('Rotation Z-Y-X matrix: ')
% disp(ABR)

r1 = rotz(10) * roty(20) * rotx(30);
r2 = rotz(30) * roty(90) * rotx(-55);

beta = -asind( r1(3,1) );
alpha = acosd( r1(1,1)/cosd(beta) );
gamma = acosd( r1(3,3)/cosd(beta) );

beta2 = -asind( r2(3,1) );
if(beta2 == 90 || beta == -90)
    disp('Solution degradation');
    alpha2 = 0;
    gamma2 = atan2d(r2(1,2), r2(2,2));
else
    beta2 = asind( r2(3,1) );
    alpha2 = acosd( r2(1,1)/cosd(beta2) );
    gamma2 = acosd( r2(3,3)/cosd(beta2) );
end
