clc;
clear all;
close all;

num = input('Enter a number: ', 's');
fs = 8192;
t = 0:1/fs:1;
low_grp = [697, 770, 852, 941];
high_grp = [1209, 1336, 1477, 1633];
len = length(num);
for i = 1:len
    switch num(i)
        case {'1', '2', '3', 'A'}
            f_low = low_grp(1);
        case {'4', '5', '6', 'B'}
            f_low = low_grp(2);
        case {'7', '8', '9', 'C'}
            f_low = low_grp(3);
        case {'*', '0', '#', 'D'}
            f_low = low_grp(4);
    end
    switch num(i)
        case {'1', '4', '7', '*'}
            f_high = high_grp(1);
        case {'2', '5', '8', '0'}
            f_high = high_grp(2);
        case {'3', '6', '9', '#'}
            f_high = high_grp(3);
        case {'A', 'B', 'C', 'D'}
            f_high = high_grp(4);
    end
    tone_low = sin(2*pi*f_low*t)/2;
    tone_high = sin(2*pi*f_high*t)/2;
    tone = tone_low + tone_high;
    sound(tone);
    pause(1);
end