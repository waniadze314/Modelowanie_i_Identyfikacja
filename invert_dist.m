% 1. dystrybuanta - ca�ka z g�sto�ci
% 2. funkcja odwrotna dystrybuanty
% 3. warto�ci dystrybuanty z ci�gu o rozk�adzie normalnym
clear all;
close all;
figure(1)
lambda=250;
U = rand_sawtooth(10000);
%rozk�ad tr�jk�tny
%F = (-sign(probes).*(probes));
Us = sort(U);
Ul = Us(1:5000);
Ur = Us(5001:10000);
Xl = -1+sqrt(abs(2.*Ul));
Xr = 1-sqrt(abs(2-2.*Ur));
X = [Xl Xr];
subplot(511)
histogram(X, 100, 'DisplayStyle', 'bar')
title('Rozk�ad tr�jk�tny')
[a b] = ecdf(X);
t = kstest2(b, X);
fprintf('KS test dla tr�jk�ta: %f\n',t);

%rozk�ad wyk�adniczy
X = -(1/lambda)*log(1-U);
subplot(512)
histogram(X, 100, 'DisplayStyle', 'bar')
title('Rozk�ad wyk�adniczy')
[a b] = ecdf(X);
t = kstest2(b, X);
fprintf('KS test dla wyk�adniczego: %f\n',t);
%rozk�ad logistyczny
u = 0;
s = 2;
X = u-s*log(U./(1-U));
subplot(513)
histogram(X, 100, 'DisplayStyle', 'bar')
title('Rozk�ad logistyczny')
[a b] = ecdf(X);
t = kstest2(b, X);
fprintf('KS test dla logistycznego: %f\n',t);
%rozk�ad Laplace'a
sgn = sign(rand_fibo(10000)-0.5);
X = -(1/lambda)*sgn.*log(1-U);
subplot(514)
histogram(X, 100, 'DisplayStyle', 'bar')
title('Rozk�ad Laplacea')
[a b] = ecdf(X);
t = kstest2(b, X);
fprintf('KS test dla Laplace: %f\n',t);
%rozk�ad Cauchyego
lambda = 0.1;
m = 1;
X = lambda.*tan(2.2.*U-1)+m;
subplot(515)
histogram(X, 100, 'DisplayStyle', 'bar')
title('Rozk�ad Cauchyego')
[a b] = ecdf(X);
t = kstest2(b, X);
fprintf('KS test dla Cauchy: %f\n',t);