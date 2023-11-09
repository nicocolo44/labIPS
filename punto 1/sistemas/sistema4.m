function y = sistema4(x)
    n = length(x);
    y(1) = 1/4*x(1);
    for i = 2:n
        y(i) = (1/4) * x(i) - (1/4) * x(i-1) - (1/2) * y(i-1);
    end
end