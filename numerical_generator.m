f_x = @(x) sin(x);
x_min=-3;
x_max=3;
g_x = integral(f_x, x_min, x_max);
x = x_min:0.02:x_max;

F = f_x(x);
figure(1);
subplot(211)
plot(x,F)

dx = 0.02;
for n=1:301
   g(n) = integral(f_x,x0,x0+dx);
   dx=dx+0.02;
end

subplot(212)
plot(x,g)
