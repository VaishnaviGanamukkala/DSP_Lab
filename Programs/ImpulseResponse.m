clc;
clear all;
close all;

% Consider the 1st order system y(n) = (3/8)y(n-1) + x(n)
% => Numnerator Co-efficients = [1] and Denominator Co-efficients = [1 -3/8]
num1 = input('Enter the numerator co-efficients for 1st order system: ');
den1 = input('Enter the denominator co-efficients for 1st order system: ');
N1 = input('Input the required sequence length of output: ');
n1 = 0:N1-1;
h1 = impz(num1, den1);

% Consider the 2nd order system y(n) = (3/8)y(n-1) + (2/3)y(n-2) + x(n) +
% (1/4)x(n-1)
% => Numnerator Co-efficients = [1 1/4] and Denominator Co-efficients = [1 -3/8 -2/3]
num2 = input('Enter the numerator co-efficients for 2nd order system: ');
den2 = input('Enter the denominator co-efficients for 2nd order system: ');
N2 = input('Input the required sequence length of output: ');
n2 = 0:N2-1;
h2 = impz(num2, den2);

figure;
subplot(2,1,1);
stem(n1, h1(1:N1));
xlabel('time');
ylabel('Amplitude');
title('Impulse Response of 1st order system');

subplot(2,1,2);
stem(n2, h2(1:N2));
xlabel('time');
ylabel('Amplitude');
title('Impulse Response of 2nd order system');