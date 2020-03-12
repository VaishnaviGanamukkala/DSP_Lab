clc;
clear all;
close all;

rp = input('Enter the passband ripple(in dB): ');
rs = input('Enter the stopband ripple(in dB): ');
fp = input('Enter the passband frequency(in Hz): ');
fs = input('Enter the stopband frequency(in Hz): ');
F = input('Enter the sampling frequency(in Hz): ');

wp = 2 * (fp/F);
ws = 2 * (fs/F);
w = [wp ws];

ord = cheb2ord(wp, ws, rp, rs);
[num, den] = cheby2(ord, rs, w, 'bandpass');
[h, w] = freqz(num, den);
mag = 20*log10(abs(h));
ang = angle(h);
wn = w/pi;
subplot(2,1,1);
plot(wn, mag);
%axis([0 1 -200 50])
xlabel('Normalised Frequency');
ylabel('Magnitude(in dB)');
title('Magnitude Response');
subplot(2,1,2);
plot(wn, ang);
xlabel('Normalised Frequency');
ylabel('Phase');
title('Phase Response');
