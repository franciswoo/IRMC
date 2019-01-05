%Use Corke MATLAB Robotics toolbox to test the answer

L1 = Link('a', 0, 'alpha', 0, 'd', 0, 'modified');
L2 = Link('a', 4, 'alpha', 0, 'd', 0, 'modified');
L3 = Link('a', 3, 'alpha', 0, 'd', 0, 'modified');
eff= Link('a', 2, 'alpha', 0, 'd', 0, 'modified');

bot = SerialLink([L1 L2 L3 eff], 'name', 'robot');

disp('0 0 0:');
Ti = bot.fkine([0 0 0 0]);
Ti

disp('10 20 30 :')
Tii = bot.fkine([10 20 30 0]);
Tii

disp('90 90 90')
Tiii = bot.fkine([90 90 90 0]);
Tiii
