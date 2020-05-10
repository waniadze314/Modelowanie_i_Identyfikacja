clear all;
close all;
hold on;
x = rand_sawtooth(1000).*4 - 2;
z = randn(1,1000)*2;
alpha = 15;
x_axis = linspace(-2,2,1000);
y_org = m(x,alpha);
y = y_org + z;
y_basic = m(x_axis,alpha);
plot(x_axis,y_basic)
estimator_NW(x,y)


