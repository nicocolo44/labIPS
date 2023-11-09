function y = sistema2(N , x)
y = zeros(1, N);
y(1) = x(1);
y(8821)= x(8821) - 0.45 * x(1);
y(17641) = x(17641) - 0.45 * x (8821) + 0.2025 * x(1);
end

