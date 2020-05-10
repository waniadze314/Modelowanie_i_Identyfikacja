function value = core_rectangle(argument)
size = length(argument);
value = zeros(1, size);
for n=1:size
    if(abs(argument(n))<=0.5)
        value(n) = 1;
    else
        value(n) = 0;
    end
end
end