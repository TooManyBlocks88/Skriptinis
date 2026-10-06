% Bernardas Petraska
% EEf-25/2
% 2026-10-06
% 4 variantas

clear
x = 0:0.01:5;
signal.lygtis = cos(sin(2*pi*x));
signal.x = x;
signal.vardas = "f(x) = cos(sin(2pix))";

plot(signal.x, signal.lygtis)
title(signal.vardas)

while true
    m = input("Iveskite m: ");
    n = input("Iveskite n: ");
    if m==n
        break
    end
    while m ~= n
        if m>n
            m=m-n;
        else
            n=n-m;
        end
    end
    disp(m)
end

% Papildoma 20 variantas

x = input("Iveskite x: ");
y = input("Iveskite y: ");

for i=1:20
    m = randi(x);
    n = randi(y);
    A = zeros(x,y);
    A(m,n) = NaN;
    disp(A);
    pause(0.5);
    clc;
end