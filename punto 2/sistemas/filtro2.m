function y = filtro2(x)

N = length(x);
y = zeros(1, N);


for i = 1:N
    y(i) = x(i);
    if i > 8820
        y(i) = y(i) + 0.45 * x(i - 8820);
    if i > 26460
        y(i) = y(i) - 0.091125 * x(i - 26460);
    end
end  
end

