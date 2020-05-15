function value = core_triangle(argument)
size = length(argument);
value = zeros(1,size);
for n=1:size
    if(argument(n)<=0 && argument(n)>-0.5)
        value(n) = 1+2*argument(n);
    elseif(argument(n)>0 && argument(n)<0.5)
        value(n) = 1-2*argument(n);
    else 
        value(n) = 0;     
    end
end
end