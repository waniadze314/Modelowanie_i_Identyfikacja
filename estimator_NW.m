function values = estimator_NW(probes1, probes2)
x1 = min(probes1);
x2 = max(probes1);
size = length(probes1);
h = 0.45;
x = linspace(x1,x2,size);
values = zeros(size,1);
for i=1:size
    up_sum = 0;
    down_sum = 0;
    for j=1:size
        up_sum = up_sum + probes2(j).*core_keys((probes1(j)-x(i))/h);
        down_sum = down_sum + core_keys((probes1(j)-x(i))/h);        
    end
    values(i) = up_sum/down_sum;
end
plot(x,values)

end