function random_probes = rand_laplace(probes)
lambda = 2;
U = rand_sawtooth(probes);
sgn = sign(rand_fibo(probes)-0.5);
random_probes = -(1/lambda)*sgn.*log(1-U);

end