function value = estimator_K(probes)
size = length(probes);
N=size;
p = floor(sqrt(N));
minimum = min(probes);
maximum = max(probes);
x = linspace(minimum,maximum,p);
value = zeros(1,p);
alpha = 0.1;
h=N.^(-alpha);

for m=1:p
   tmp_value = 0;
   for k=1:size
       tmp_value = tmp_value + core_rectangle((-x(m)+probes(k))/h);
   end    
   value(m) = (1/(h*N)).*tmp_value;
end
  %value = sort(value);
plot(x, value, 'o')

end