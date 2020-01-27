clc;
clear all;
close all;

d = input('Enter Decimation factor: ');
i = input('Enter Interpolation factor: ');
t = 0:0.01:1;
l = length(t);
x = sin(2*pi*t);
y = resample(x, i, d);

figure;
subplot(2,1,1);
stem(x(1:l));
xlabel('Time');
ylabel('Amplitude');
title('Input Signal');

subplot(2,1,2);
stem(y(1:l*i/d));
xlabel('Time');
ylabel('Amplitude');
title('Resampled Signal');