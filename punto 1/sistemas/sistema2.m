function y = sistema2(x)
    n = length(x);
    y(1) = 1/2*x(1);
    for i = 2:n
        y(i) = (1/2) * x(i) - (1/2) * x(i-1);
    end
end