function y = filtro1(x)
    N = length(x);
    y = zeros(1, N);

     for i = 1:N
        y(i) = x(i);
        if i > 8820
            y(i) = y(i) + 0.45 * x(i - 8820);
        end
end  
end 