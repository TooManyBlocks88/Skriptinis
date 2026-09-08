% Bernardas Petraska
% EEf-25/2
% 2026-09-08

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_2 [-x-]')

% help sin
% doc plot
% lookfor title

% Papildoma uzduotis

N = 6;
x1 = N+1;
x2 = N+4;
% The spacing between the points is (x2-x1)/(n-1).
% žingsnis 0,5
n = (x2-x1)/0.5+1
v = linspace(x1,x2,n)

A = reshape(N:N+8, 3, 3)' %transponavau su ' kad eitu per eilutes

a = A(3,2)
b = A(2:3,1:2)
c = A([1 3], [1 3])

v2 = v(1:3);
A_v = [A; v2]
