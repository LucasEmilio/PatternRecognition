clc
x=input("Presione 1 si quiere meter las clases por primera vez y 2 si quiere solo meter otro punto ");
if x==1   
    clc
    clear all
    close all
    warning off all
    %Creando las clases
    i=input('Clases a crear:   ');
    
    for t=1:i
        j=input('Dame el valor de representantes:  ');
        k=input('Dame el valor de x:  ');
        l=input('Dame el valor de y:  ');
        %guardar las posiciones de j y las coordenadas en x y en y en un arreglo
        vj(t) = j;
        if(t>1)
            aux=t-1;
            aux2=vj(aux);
            aux3=vj(aux) + j;
            aux4 = aux2 +1;
        else
            aux=1;
            aux2=1;
            aux3=j;
            aux4=1;
        end
        cx=randn(1,j)+k;
        cy=randn(1,j)+l;
        vex(aux4:aux3) = cx;
        vey(aux4:aux3) = cy;
        c=[cx(:,:);cy(:,:)];
        
    end

elseif x == 2
end


%menu
clc
disp('(1)Distancia Euclidiana');
disp('(2)Mahalanobi');
disp('(3)Ambos');
disp('(4)Salir')
op = input('<==Selecciona una opcion para calcular la distancia==>');
%ingresando el vector

switch op
    case 1
        clc
        vx=input('dame la coordenada del vector en x: ');
        vy=input('dame la coordenada del vector en y: ');
        vector = [vx;vy];
        for t=1:i
            %Meter esto en un for
            
            if (t>1)
                inicio=vj(t-1)+1;
                fin=inicio+vj(t)-1;
            else
                inicio = 1;
                fin = vj(1);
            end
            rango = [inicio:fin];
            c=[vex(rango);vey(rango)];
            mediac = mean(c,2); 
            distE(t) = norm(mediac);
            %Aqui termina el for
        end
        minimo=min(distE);
        clasePerteneciente = find(minimo==distE)
    case 2
        clc
        vx=input('dame la coordenada del vector en x: ');
        vy=input('dame la coordenada del vector en y: ');
        vector = [vx;vy];
        for t=1:i
            
            %meter esto en un for
            if (t>1)
                inicio=vj(t-1)+1;
                fin=inicio+vj(t)-1;
            else
                inicio = 1;
                fin = vj(1);
            end
            rango = [inicio:fin];
            c=[vex(rango);vey(rango)];
            mediac = mean(c,2);
            a = [c(1,:) - mediac(1); c(2,:) - mediac(2)];
            b = a';
            Esperanzac = (1/j)*(a*b);
            inv1 = inv(Esperanzac);
            d = (vector - mediac);
            distM(t) = [d']*(inv1)*[d];
            %Aqui termina el for
        end
        minimo=min(distM);
        clasePerteneciente = find(minimo==distM)
    case 3
        clc
        vx=input('dame la coordenada del vector en x: ');
        vy=input('dame la coordenada del vector en y: ');
        vector = [vx;vy];
        for t=1:i
            %Meter esto en un for
            
            if (t>1)
                inicio=vj(t-1)+1;
                fin=inicio+vj(t)-1;
            else
                inicio = 1;
                fin = vj(1);
            end
            rango = [inicio:fin];
            c=[vex(rango);vey(rango)];
            mediac = mean(c,2); 
            distE(t) = norm(mediac);
            %Aqui termina el for
        end
        minimo=min(distE);
        clasePertenecienteEuclidiana = find(minimo==distE)
        for t=1:i
            
            %meter esto en un for
            if (t>1)
                inicio=vj(t-1)+1;
                fin=inicio+vj(t)-1;
            else
                inicio = 1;
                fin = vj(1);
            end
            rango = [inicio:fin];
            c=[vex(rango);vey(rango)];
            mediac = mean(c,2);
            a = [c(1,:) - mediac(1); c(2,:) - mediac(2)];
            b = a';
            Esperanzac = (1/j)*(a*b);
            inv1 = inv(Esperanzac);
            d = (vector - mediac);
            distM(t) = [d']*(inv1)*[d];
            %Aqui termina el for
        end
        minimo=min(distM);
        clasePertenecienteMahalanobis = find(minimo==distM)
        if(clasePertenecienteMahalanobis == clasePertenecienteEuclidiana)
            disp('Los dos metodos coinciden');
        else
            disp('Los dos metodos no coinciden')
        end
       
    otherwise 
        return
end

%Ploteando la figura
for t=1:i
    if (t>1)
        inicio=vj(t-1)+1;
        fin=inicio+vj(t)-1;
    else
        inicio = 1;
        fin = vj(1);
    end
    rango = [inicio:fin];
    c=[vex(rango);vey(rango)];
    figure(1)
    plot(c(1,:),c(2,:),'ko','MarkerSize',10,'MarkerFaceColor',rand(1,3));
    grid on
    hold on
    legend
end

figure(1)
plot(vector(1,:),vector(2,:),'ko', 'MarkerSize', 10, 'MarkerFaceColor','k', 'DisplayName','punto')
legend



