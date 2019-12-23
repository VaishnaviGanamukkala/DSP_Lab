function X = dft(x)
N = length(x);
X = zeros(1,N);
for k = 1:N
    for n = 1:N
        X(k) = X(k) + (x(n) * exp(-1i * ((2*pi)/N) * (n-1) * (k-1)));
    end
end
end