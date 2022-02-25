clc
clear all
close all
warning off all
%lo anteror lo ponemos siempre

%programa que calcula la toma de decisiones entre dos clases dado un vector
%desconocido
%buscar dudas en search documentation
%introducir los datos de las clases
c1 = [1,3,1,2,3;2,3,5,2,3];
c2 = [6,6,7,8,8;4,3,4,4,5];

%la coma (,) y el espacio en blanco( ) funcionan de la misma manera en este
%caso

vx=input('dame la coordenada del vector en x: ');
vy=input('dame la coordenada del vector en y: ');
vector = [vx;vy];

%graficando las clases y el vector
plot(c1(1,:),c1(2,:),'ko', 'MarkerSize', 10, 'MarkerFaceColor',rand(1,3))
grid on %cuadricula
hold on
plot(c2(1,:),c2(2,:),'bo', 'MarkerSize', 10, 'MarkerFaceColor','b')
plot(vector(1,:),vector(2,:),'ko', 'MarkerSize', 10, 'MarkerFaceColor','k')
legend('clase1','clase2', 'vector')

%calculo los parametros por cada clase, 
%el dos es de dos dimensiones
media1 = mean(c1,2);
media2 = mean(c2,2);

%calculo de las distancias entre el vector y el centro de gravedad de las
%clases

dist1 = norm(media1-vector);
dist2 = norm(media2-vector);

dato = [dist1, dist2];
minimo = min(dato);
dato2 = find(dato == minimo);

fprintf('El vector desconocido pertenece a la clase %d\n',dato2);
disp('fin del programa...');

