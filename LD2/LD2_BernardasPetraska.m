% Bernardas Petraska
% EEf-25/2
% 2026-09-15

v1 = 10:-1:-15;
v2 = log2(v);
ats = v1 ./ v2;
disp(ats)

Cm1 = pi/2:pi/2:(3*pi)/2;
Cm2 = -1:1;
Cm3 = -3:-1:-5;
C = [Cm1; Cm2; Cm3]
sum(C,2)

% Duomenys
A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

t = 0:0.001:1.5;
signalas = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = sigma*randn(size(t));
s = signalas + n;

% Uzduotis
s_virs = s(s > U1);
s_filtr = s;
s_filtr(abs(s_filtr) < U2) = 0;

dydis = size(s)
dydis_virs = size(s_virs)
didziausia = max(s_filtr)
maziausia = min(s_filtr)