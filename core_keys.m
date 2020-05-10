function value = core_keys(argument)
size = length(argument);
value = zeros(1,size);
for n=1:size
    if(argument(n) == 0)
        value(n) = 1;
    elseif(abs(argument(n))<=0.5)
        value(n) = sin(argument(n)*4*pi)./(argument(n)*4*pi);
    else
        value(n) = 0;
    end
end

end