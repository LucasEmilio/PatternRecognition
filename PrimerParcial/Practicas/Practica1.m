clc
clear all
close all
warning off all
%programa para generar n clases con m representantes de cada una

%generando clases de datos 

vx=input('dame el valor del punto en x: ');
vy=input('dame el valor del punto en y: ');
vector=[vx;vy];

plot(vector(1,:),vector(2,:),'ko','MarkerSize',10,'MarkerFaceColor','k', 'DisplayName','punto');
grid on;
hold on;

i=input('Clases a crear:   ');
%med0= 1:i;
%dist0= 1:i;

for t=1:i
    
    j=input('Dame el valor de representantes:  ');
    k=input('Dame el valor de x :   ');
    l=input('Dame el valor Y:   ');
    cx=randn(1,j)+k;
    cy=randn(1,j)+l;
    c=[cx(:,:);cy(:,:)];
    mediac = mean(c,2); 
    dist(t) = norm(mediac);
    chr = strcat('Clase ', int2str(t));
    figure(1)
    plot(cx(1,:),cy(1,:),'ko','MarkerSize',10,'MarkerFaceColor',rand(1,3), 'DisplayName',chr); 
    grid on
    hold on
    legend
    
end

   minimo=min(dist);
   clasePerteneciente = find(minimo==dist)

%fprintf('%d',dist);
%disp(cx);
%disp(cy);
