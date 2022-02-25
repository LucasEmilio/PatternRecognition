clc
clear all
close all
warning off all
a = [-1,1,-1,0,1;-1,0,2,-1,0];
b = a';
res = (1/5)*(a*b);

c = [-1,-1,0,1,1;0,-1,0,0,1];
d = c';
res2 = (1/5)*(c*d);
%d(xvecor, uk) = (xvector - uk)Matriz de k a -1 (xvector - uk)^t
inv1 = inv(res);
inv2 = inv(res2);
dist = [2,2]*[inv1]*[2;2];
dist2 = [-3,1]*[inv2]*[-3;1];

e = [-5, -12, -11, -5, -7;-20 -25,-5,-19,-29];
f = e';
res3 = (1/5) * (e*f);

g = [7, -1, -5, 0, -1; 3,-7, -1, 5, 0];
h = g';
res4 = (1/5) * (g*h);

i = [7, -5, 0, -3, 1;11, 1, -7, -2, -3];
j = i';
res5 = (1/5)*(i*j);

inv3 = inv(res3);
inv4 = inv(res4);
inv5 = inv(res5);

dist3 = [2,6]*[inv3]*[2;6];
dist4 = [2,5]*[inv4]*[2;5];
dist5 = [4,4]*[inv5]*[4;4];

%tarea para el miercoles, agregar otras tres clases a 2d, sin traslape y
%hacer mahalanobis, vector [4,5], a mano

%como reto personal programa mahalanobis en algun lenguaje que quieras

