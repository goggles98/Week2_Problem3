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

cont = 400*(s+0.1)/s;
sys = feedback(Gs*cont, 1);
step(sys);

%Kp = 400 ; Ki = 40

