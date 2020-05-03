function random_probes = rand_exp(probes)
lambda = 4;
U = rand_sawtooth(probes);
random_probes = -(1/lambda)*log(1-U);
end