%clase del 23/Febrero/2022
%Clasificador de Bayes
%clases 
c1 = [1,3,1,2,3;2,3,5,2,3];
c2 = [6,6,7,8,8;4,3,4,4,5];
vector = [4,5];
%distancias
a = [-1,1,-1,0,1;-1,0,2,-1,0];
b = a';
res = (1/5)*(a*b);
c = [-1,-1,0,1,1;0,-1,0,0,1];
d = c';
res2 = (1/5)*(c*d);
inv1 = inv(res);
inv2 = inv(res2);
dist = [2,2]*[inv1]*[2;2];
dist2 = [-3,1]*[inv2]*[-3;1];

%probabilidades
PxC1 = 1/((2*3.1416)*det(res)^0.5);
b2 = exp(-0.5*dist);
Prob1 = PxC1 + b2;
PxC2 = 1/((2*3.1416)*det(res2)^0.5);
b3 = exp(-0.5*dist2);
Prob2 = PxC2 + b3;

%Normalizando las probabilidades
ProbxC1N = (prob1/Prob1+Prob2)*100;
ProbxC2N = (prob2/Prob1+Prob2)*100;


%Practica3 agregar a la practica2 el clasificador de Bayes, con la opcion
%de todos para que compare resultados y decida cual es el mas
%exacto, todavia no hay fecha (posiblemente el martes 02 de marzo), practica2 para el viernes, en el examen va a
%haber una parte de teoria(1pt), tres problemas (3pts c/u) los problemas se
%van a basar en las practicas