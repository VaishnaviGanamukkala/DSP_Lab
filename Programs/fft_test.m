clc;
clear all;
close all;

seq = input('Enter input sequence: ');
disp('Output of fft of given sequence:');
disp(fft(seq));
disp('Output of ifft of the transformed sequence:');
disp(ifft(fft(seq)));