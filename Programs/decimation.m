clc;
clear all;
close all;

n = input('Enter the factor by which input sequence must be decimated: ');
x = input('Enter the input sequence: ');
y = downsample(x, n);

figure;
subplot(2,1,1);
stem(x);
xlabel('Time');
ylabel('Amplitude');
title('Input Sequence');

subplot(2,1,2);
stem(y);
xlabel('Time');
ylabel('Amplitude');
title('Decimated Output');

t = 0:0.01:1;
l = length(t);
z = sin(2*pi*t);
d = downsample(z, n);

figure;
subplot(2,1,1);
stem(z(1:l));
xlabel('Time');
ylabel('Amplitude');
title('Input Signal');

subplot(2,1,2);
stem(d(1:l/n));
xlabel('Time');
ylabel('Amplitude');
title('Decimated Output');