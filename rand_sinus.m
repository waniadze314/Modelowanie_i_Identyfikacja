function random_probes = rand_sinus(probes) 
random_probes(1) = rand();
for n = 2:probes
    w = 666;
    random_probes(n) = (1+sin(w*random_probes(n-1)))/2;
end
end