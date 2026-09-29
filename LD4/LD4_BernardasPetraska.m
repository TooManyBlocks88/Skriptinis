% Bernardas Petraska
% EEf-25/2
% 2026-09-29
% 11 variantas

x=(2*rand(1,200)-1).*sqrt(pi/2);
y=(2*rand(1,200)-1).*sqrt(pi/2);

[X,Y] = meshgrid(x,y);

Z = sin(X.^2+Y.^2);

figure
surf(X,Y,Z)
colormap(cool)
shading flat
view(50,30)
xlabel('x asis')
ylabel('y asis')
zlabel('Z')
title('funkcijos pavirsiai')

x = linspace(-2,1,200);
y = linspace(-2,1,200);
[X,Y] = meshgrid(x,y);
Z = 1-2*X.^2-3*Y.^2;

figure
surf(X,Y,Z)
colormap(turbo)
shading flat
view(60,30)
xlabel('x asis')
ylabel('y asis')
zlabel('Z')
title('antros funkcijos pavirsiai')

% Trys pavirsiai
Z = 1-(X.^2+Y.^2);
figure
surf(X,Y,Z)

eil = [0 0 1; 0 1 0; 1 0 0];
colormap(eil);

shading flat
view(60,30)
xlabel('x asis')
ylabel('y asis')
zlabel('Z')
title('antros funkcijos pavirsiai')

figure
surf(X,Y,Z)

eil = [0.3 0 1; 0 0.5 1; 0.3 0.7 0; 1 0 0.3];
colormap(eil);

shading flat
view(60,30)
xlabel('x asis')
ylabel('y asis')
zlabel('Z')
title('antros funkcijos pavirsiai')

figure
surf(X,Y,Z)

eil = [1 0.5 1; 0.5 0.5 1; 0.5 1 1];
colormap(eil);

shading flat
view(60,30)
xlabel('x asis')
ylabel('y asis')
zlabel('Z')
title('antros funkcijos pavirsiai')


