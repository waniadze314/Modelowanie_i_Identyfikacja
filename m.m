function values = m(x, alpha)
    size = length(x);
    values = zeros(1,size);
    for i=1:size
        values(i) = alpha*atan(x(i));
    end
end