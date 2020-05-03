function value = estimator_ECDF(probes)
size = length(probes);
sort_probes = sort(probes);
tmp_value = zeros(1,size);
for x=1:size
   tmp_value(x)=sum_I(probes, sort_probes(x));
end
value = sort(tmp_value);
plot(sort_probes, value);
end
