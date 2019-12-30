clc;
clear all;
close all;

%Frequency response of continuous time LTI system
%H(s) = (s + 4) / (s^2 + 3s + 1)
num = [1 4];
den = [1 3 1];
[h, w] = freqs(num, den);

subplot(2, 1, 1);
plot(w, abs(h));
xlabel('frequency(w)');
ylabel('Magnitude');
title('Magnitude Response of Continuous Time LTI System');

subplot(2, 1, 2);
plot(w, angle(h));
xlabel('frequency(w)');
ylabel('Phase');
title('Phase Response of Continuous Time LTI System');

%Frequency response of discrete time LTI system
%y(n) = 3/8*y(n-1) + 2/3*y(n-2) + x(n) + 1/4*x(n-1)
%H(z) = Y(z)/X(z) = (1 + 1/4*z^-1) / (1 - 3/8*z^-1 - 2/3*z^-2)
num1 = [1 1/4];
den1 = [1 -3/8 -2/3];
[h1, w1] = freqz(num1, den1);

figure;
subplot(2, 1, 1);
plot(w1, abs(h1));
xlabel('frequency(w)');
ylabel('Magnitude');
title('Magnitude Response of Discrete Time LTI System');

subplot(2, 1, 2);
plot(w1, angle(h1));
xlabel('frequency(w)');
ylabel('Phase');
title('Phase Response of Discrete Time LTI System');