function random_probes = rand_fibo(probes)

fibo_mod = 0.45;
fibo_q = 2;
fibo_p = 8;

random_probes = rand_sawtooth(10);
for n = 11:probes
   random_probes(n) = mod((random_probes(n-fibo_p)-random_probes(n-fibo_q)),1); 
end
end