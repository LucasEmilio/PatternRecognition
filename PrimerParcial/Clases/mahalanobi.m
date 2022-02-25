clc
clear
close all
warning off all 

%Programa que calcula a que clase pertenece un vector

%Declaramos nuestras clases y nuestro vector
c1 = [1,3,1,2;2,3,5,2];
c2 = [6,6,7,8;4,3,4,5];
vx=input('dame la coordenada del vector en x: ');
vy=input('dame la coordenada del vector en y: ');
vector = [vx;vy];%cambia el vector para despues

%calculando las medias
mediaC1 = mean(c1,2)
mediaC2 = mean(c2,2);

%calculando las esperanzas
a = [c1(1,:) - mediaC1(1); c1(2,:) - mediaC1(2)];
b = a';
EsperanzaC1 = (1/4) * (a*b)
c = [c2(1,:) - mediaC2(1); c2(2,:) - mediaC2(2)];
d = c';
EsperanzaC2 = (1/4)*(c*d)

%calculando la inversa
inv1 = inv(EsperanzaC1);
inv2 = inv(EsperanzaC2);

%calculando las distancias
dist1 = [2,2]*(inv1)*[2;2];
dist2 = [-3,1]*(inv2)*[-3;1];

%encontrando la menor distancia
dato = [dist1, dist2];
minimo = min(dato);
dato2 = find(dato == minimo);
fprintf('El vector desconocido pertenece a la clase %d\n',dato2);

%graficando las clases y el vector
plot(c1(1,:),c2(2,:),'ro', 'MarkerSize', 10, 'MarkerFaceColor',rand(1,3))
grid on%cuadricula
hold on
plot(c2(1,:),c2(2,:),'bo', 'MarkerSize', 10, 'MarkerFaceColor','b')
plot(vector(1,:),vector(2,:),'ko', 'MarkerSize', 10, 'MarkerFaceColor','k')
legend('clase1','clase2', 'vector')

