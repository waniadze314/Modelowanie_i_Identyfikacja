function value = estimator_VAR(probes)
size = length(probes);
est_EX = estimator_EX(probes);
tmp = 0;
for n=1:size
   tmp = tmp + (est_EX - probes(n)).*(est_EX - probes(n)); 
end
value = tmp./size;

end