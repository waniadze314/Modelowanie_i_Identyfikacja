function random_probes = rand_sawtooth(probes)
random_probes(1) = rand();
w = 666;
for n = 2:probes
    random_probes(n) = (1+sawtooth(w*random_probes(n-1)))/2;
end
end