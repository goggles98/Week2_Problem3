s = tf('s');
m = 1000;
b = 50;
Gs = 1/(m*s+b);
sys = feedback(Gs, 1);
step(500*sys)