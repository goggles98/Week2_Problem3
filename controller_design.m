s = tf('s');

% Declare the variables
m = 1000;
b = 50;

%% For uncompensated system
% Gs = 1/(m*s+b);
% sys = feedback(Gs, 1);
% step(500*sys);

%% Find the values of Kp and Ki:
Gs = 1/(m*s+b);

cont = ;
sys = feedback(Gs*cont, 1);
step(500*sys);

%Kp = 400 ; Ki = 40

