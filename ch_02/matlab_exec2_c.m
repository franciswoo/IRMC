clear
clc

syms r11 r12 r13 r21 r22 r23 r31 r32 r33 x y z

T = [r11 r12 r13 x;
     r21 r22 r23 y;
     r31 r32 r33 z;
       0   0   0 1];
  
invT = inv(T);

   
