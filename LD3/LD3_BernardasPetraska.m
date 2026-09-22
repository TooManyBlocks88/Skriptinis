% Bernardas Petraska
% EEf-25/2
% 2026-09-22
% 11 variantas

x = 0:0.5:2*pi;
y = sin(x)+cos(x).^2;

figure
plot(x,y,'o','MarkerEdgeColor','r','MarkerFaceColor','y')
axis([0 2*pi -2 2])
grid on
legend('y','Location','best')
xlabel('x')
ylabel('f(x)')
title('Pirma dalis')

y1 = x.^(exp(1));
y2 = x.^(2*exp(1));
y3 = x.^(3*exp(1));

figure
plot(x,y1,x,y2,x,y3)
axis([0 2*pi 0 10])
% pasirinkau y riba kad matytusi svarbios reiksmes 0 ir 1 taskuose
grid on
legend('y1','y2','y3','Location','best')
xlabel('x')
ylabel('f(x)')
title('Antra dalis')

%--------------------------------------------------------------------

x = -2*pi:pi/6:2*pi;
y = x.^3 + sin(x);

figure
quiver(x,zeros(size(x)),zeros(size(x)),y)
xlabel('x')
ylabel('y(x)')
title('Vektoriai')

figure
bar(x,y)
xlabel('x')
ylabel('y(x)')
title('Stulpeline diagrama')

%--------------------------------------------------------------------
% Papildoma uzduotis
% 5 variantas
% Kopijuoju 2LD koda

A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

t = 0:0.001:1.5;
signalas = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = sigma*randn(size(t));
s = signalas + n;

s_virs = s(s > U1);
s_filtr = s;
s_filtr(abs(s_filtr) < U2) = 0;

didziausia = max(s_filtr);
maziausia = min(s_filtr);

% Uzduotis

figure
plot(t, s, '-', 'LineWidth', 2)
hold on
plot(t, s_filtr, ':', 'LineWidth', 2)
yline(U1,'--')
yline(U2,'m--')
hold off
grid on
xlabel('t')
ylabel('Signalas')
legend('s pradinis','s filtruotas','U1','U2','Location','northeast')
title('Pradinis ir filtruotas signalai su ribomis')

figure
plot(t, s_virs, '-', 'LineWidth',2)
%nepavyko

