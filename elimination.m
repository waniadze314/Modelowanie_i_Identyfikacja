clear all;
close all;
figure(1)
%c = 0.1*sqrt(2*exp(1)/pi);
c=3;
good = 0;
bad = 0;
range =1000;
probes = 10000;
a=500;
b=2;
parabola = @(x) c.*(x-a).^2+b;
%random_y = c.*rand_fibo(probes); %ograniczenie rozk³adem jednostajnym
random_y = c.*rand_exp(probes); %ograniczenie rozk³adem wyk³adniczym
%random_y = c.*rand_laplace(probes); %ograniczenie rozk³adem Laplace'a

random_x = range.*rand_fibo(probes);
sgn = sign(rand_fibo(10000)-0.5);
random_xs = random_x.*sgn;

y_vec = [3 3 1 1  2 2 0 0];
x_vec = [0 299 300 599 600 899 900 1000];
[~, index] = sort(x_vec);
%F = griddedInterpolant(x_vec(index), y_vec(index)); %curve
sigma = 0.4;
mi = 1;
F = @(x) (1/(sqrt(2*pi)*sigma)) * exp(-((((x+100)./100)-mi).^2)/(2*mi^2)); % normal
%F = @(x) 0.00001.*((x-500)).^2 + 2; %quadrature

x=0:1000;
y=F(x);
subplot(211)
plot(x,y);
title("Rozk³ad prawdopodobieñstwa")

for n=1:probes
    tmp_y = random_y(n);
    if(tmp_y <= F(random_x(n)))
        good=good+1;
        random_elim(good) = random_x(n);
    else
        bad=bad+1;
    end
end

subplot(212)
histogram(random_elim, 100, 'DisplayStyle','bar')
title('Histogram wygenerowanych zmiennych losowych')
[a b] = ecdf(random_elim);
kstest2(b, random_elim)
