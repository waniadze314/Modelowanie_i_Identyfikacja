function coef = sum_I(probes, value)
    size = length(probes);
    coef = 0;
    for x = 1:size
        if(probes(x)<=value)
            coef = coef + 1;
        end
    end
    coef = coef./size;
end