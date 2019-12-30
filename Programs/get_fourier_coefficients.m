clc;
clear all;
close all;

step_size = 0.01;
t = 0:step_size:2;
x = sin(2* pi * t);
[pks, locs] = findpeaks(x);
T = t(locs(2)) - t(locs(1));
disp('The time period T is: ');
disp(T);
N = T/step_size;

X = zeros(1,N/2);
for k = 1:N/2
    for n = 1:N
        X(k) = X(k) + (x(n) * exp(-1i * ((2*pi)/N) * (n-1) * (k-1)));
    end
end

X1 = fft(x, N);
subplot(3, 1, 1);
stem(x(1:n/2));
xlabel('n');
ylabel('Amplitude');
title('Half sine wave plot');

subplot(3, 1, 2);
stem(abs(X(1:n/2)));
xlabel('n');
ylabel('Coefficients');
title('Co-efficients plot by using formula');

subplot(3, 1, 3);
stem(abs(X1(1:n/2)));
xlabel('n');
ylabel('Coefficients');
title('Co-efficients plot by using fft');