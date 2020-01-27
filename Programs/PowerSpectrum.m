clc;
clear all;
close all;

f1 = input('Enter frquency f1: ');
f2 = input('Enter frquency f2: ');
fs = input('Enter sampling frquency: ');
t = 0:1/fs:1;
w1 = 2*pi*f1;
w2 = 2*pi*f2;
x = cos(w1*t) + cos(w2*t);
rxx = xcorr(x);
sxx = fft(rxx);
X = abs(fft(x).^2);

figure;
subplot(3,1,1);
plot(t, x);
xlabel('Time');
ylabel('x(t)');
title('Input Signal');

subplot(3,1,2);
plot(10*log10(abs(sxx)));
xlabel('Frequency');
ylabel('Magnitude in dB');
title('Power Spectrum using Auto Correlation');

subplot(3,1,3);
plot(10*log10(X));
xlabel('Frequency');
ylabel('Magnitude in dB');
title('Power Spectrum using Squared Magnitudes');