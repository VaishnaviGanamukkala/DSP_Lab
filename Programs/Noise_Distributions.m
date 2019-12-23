clc;
clear all;
close all;

gaussian_noise = wgn(100000,1,0);
uniform_noise = rand(100000,1);

figure;
subplot(2,1,1);
hist(gaussian_noise);
xlabel('Noise Power');
ylabel('No. of samples');
title('Gaussian Noise Distribution');

subplot(2,1,2);
hist(uniform_noise);
xlabel('Noise Power');
ylabel('No. of samples');
title('Uniform Noise Distribution');