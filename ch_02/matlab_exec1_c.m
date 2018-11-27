%Simply rotate beta angle around the Y axis.
%Known beta=90бу B^P = {1 0 1}
%Calculate A^P

clear
clc

BP = [1 0 1]';

AP = roty(20) * BP;