clc;
clear all;
close all;

% COnsider H(z) = Y(z)/X(z) = z^-2/ 1- 2cos(wT).z^-1 + z^-2
% => Numerator Co-efficients = [0,0,1] and Denominator Co-efficients = [1, -cos(wT), 1]
f0 = input('Enter Oscillating frequency f0: ');
fs = input('Enter Sampling frequency fs: ');
T = 1/fs;
w = 2*pi*f0;
num = [0 0 1];
den = [1 -2*cos(w*T) 1];
x = [0 0 1 zeros(1, 97)];
y = filter(num, den, x);

figure;
plot(y);
xlabel('time');
ylabel('Amplitude');
title('Narrowband Signal Generation through Filtering');
