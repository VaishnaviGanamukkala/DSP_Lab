clc;
clear all;
close all;

x = [1 2 3 4 4 3 2 1];
disp(dft(x));
disp(idft(dft(x)));