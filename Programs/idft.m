function x = idft(X)
N = length(X);
x = zeros(1,N);
for k = 1:N
    for n = 1:N
        x(k) = x(k) + (X(n) * exp(1i * ((2*pi)/N) * (n-1) * (k-1)));
    end
    x(k) = x(k) / N;
end
end