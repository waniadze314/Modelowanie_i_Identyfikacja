clear all;
close all;

figure(1)
probes = 1:1:100;
rand_sinus(1) = 0.7;
rand_sawtooth(1) = 0.5;
fibo_mod = 0.45;
fibo_q = 22;
fibo_p = 88;
w = 666;
for n = 2:10000
    rand_sinus(n) = (1+sin(w*rand_sinus(n-1)))/2;
end
subplot(311)
histogram(rand_sinus,100,'DisplayStyle','bar')
title("Generator sinusoidalny")
for n = 2:10000
    rand_sawtooth(n) = (1+sawtooth(w*rand_sawtooth(n-1)))/2;
end
subplot(312)
histogram(rand_sawtooth,100, 'DisplayStyle', 'bar')
title("Generator pi³okszta³tny")
rand_fibo(probes) = rand_sawtooth(probes);
for n = 101:10000
    rand_fibo(n) = mod((rand_fibo(n-fibo_p)-rand_fibo(n-fibo_q)),1);
end
subplot(313)
histogram(rand_fibo,100,'DisplayStyle', 'bar')
title("Generator Fibonacciego")
sort_sinus = sort(rand_sinus);
sort_sawtooth = sort(rand_sawtooth);
sort_fibo = sort(rand_fibo);

med_sinus = sort_sinus(length(sort_sinus)/2);
med_sawtooth = sort_sawtooth(length(sort_sawtooth)/2);
med_sfibo = sort_fibo(length(sort_fibo)/2);

n = length(rand_sinus);
edges = linspace(0,1,101);
exC = n*diff(edges);
[h,p,st] = chi2gof(rand_sinus, 'edges', edges, 'expected', exC)

n = length(rand_sawtooth);
edges = linspace(0,1,101);
exC = n*diff(edges);
[h,p,st] = chi2gof(rand_sawtooth, 'edges', edges, 'expected', exC)

n = length(rand_fibo);
edges = linspace(0,1,101);
exC = n*diff(edges);
[h,p,st] = chi2gof(rand_fibo, 'edges', edges, 'expected', exC)