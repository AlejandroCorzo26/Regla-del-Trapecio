% trapecio_dinamico.m
clc; clear;

% Definir la función
f = @(x) 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

% Intervalo
a = 0;
b = 0.8;

% Ingreso dinámico de n
n = input('Ingrese el número de subintervalos n: ');

% Tamaño de paso
h = (b - a) / n;

% Vector de puntos
x = a:h:b;
y = f(x);

% Regla del trapecio compuesta
I_trapecio = (h/2) * (y(1) + 2*sum(y(2:end-1)) + y(end));

% Valor exacto dado
I_exacto = 1.640533;

% Error absoluto
error_abs = abs(I_exacto - I_trapecio);

% Error relativo porcentual
error_porcentual = (error_abs / I_exacto) * 100;

% Mostrar resultados
fprintf('Aproximación con n = %d: %.6f\n', n, I_trapecio);
fprintf('Valor exacto: %.6f\n', I_exacto);
fprintf('Error absoluto: %.6f\n', error_abs);
fprintf('Error porcentual: %.2f%%\n', error_porcentual);