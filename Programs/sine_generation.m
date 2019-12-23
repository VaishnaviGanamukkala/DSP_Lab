clc; 
clear all;
close all;

f0 = 500;
fs = 10000;
w = 2*pi*f0;
T = 1/fs;
k = 2 * cos(w*T);
x = [0 0 1 zeros(1,97)];
y = zeros(1,100);
y(1) = 0;
y(2) = 0;
for i = 3:100
    y(i) = k * y(i-1) - y(i-2) + x(i-2);
end;
plot(y);
axis([4, 100, -4, 4]);
xlabel('Time');
ylabel('Output');
title('Sine wave generation using recursive method');
