function value = core_keys(argument)
    if(argument == 0)
        value = 1;
    elseif(abs(argument)<=1)
        value = sin(argument)/argument;
    else
        value = 0;
end