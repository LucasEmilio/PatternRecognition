clc  %limpiar pantalla
clear all %limpia todo
close all %cierra todo
warning off all %cierra las advertencias

%PROGRAMA QUE CALCULA LA TOMA DE DECISIONES ENTRE DOS CLASES PARA UN 
%ELEMENTO DESCONOCIDO EN 3D

%Definicion de las clases
c1 = [0 1 1 0; 0 0 1 0; 0 0 0 1];
c2 = [0 0 1 0; 0 1 1 1; 1 1 1 0];
%vector = [0.3;1;0.7];
vx = input('dame la cordenada del vector en x: ');
vy = input('dame la cordenada del vector en y: ');
vz = input('dame la cordenada del vector en z: ');
vector = [vx; vy; vz];

%graficando las clases
figure(1)
plot3(c1(1,:),c1(2,:),c1(3,:),'bo','MarkerSize',10,'MarkerFaceColor','b')
grid on
hold on %respeta todo lo que se mande a plotear despues del primer plot
plot3(c2(1,:),c2(2,:),c2(3,:),'ro','MarkerSize',10, 'MarkerFaceColor', 'r')
plot3(vector(1),vector(2),vector(3),'ko','MarkerSize', 10, 'MarkerFaceColor', 'k')
legend('Clase1','Clase2','vector')

%Proceso Matematico
media1 = mean(c1,2);
media2 = mean(c2,2);

dist1 = norm(media1 - vector); %norm calcula la distancia
dist2 = norm(media2 - vector); 
dist_tot= [dist1, dist2];

minimo = (min(min(dist_tot))); %dos minimos porque el primero busca en las columnas
dato = find(dist_tot == minimo);

fprintf('el vector desconocido pertenece a la clase %d ', dato)%investiga lo que es una salida formateada
disp('fin de proceso...')
