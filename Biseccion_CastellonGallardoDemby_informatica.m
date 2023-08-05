%Ingreso de datos%
f = input('Ingrese la función entre comillas Ej: "exp(3*x)-4" :');
a = input('Ingrese el limite a inicial Ej: 0 :');
x=a;
fa=eval(f);
b = input('Ingrese el limite b inicial Ej: 2 :');
x=b;
fb=eval(f);
e = input('Ingrese el error permitido Ej: 10^-5 :');

%El maximo de iteraciones es 30 por defecto en caso que el programa no
%llegue al error minimo esperado
itm=30;
fix=8;
p=[a,b];

if (fa*fb)>0
    disp('Los signos de f(a) y f(b) tienen que ser distintos, el método no converge')
else
    for k=1:itm
        m=(a+b)/2;%se calcula m
        x=m;
        fprintf('Nuevo valor de m = %.*f',fix,m);
        fprintf('\n');        
        fm=eval(f);%se calcula f(m)
        if fm==0
            fprintf('La función da 0 en los limites actuales');
            fprintf('\n');
            a=m;
            b=m;
        elseif (fb*fm)>0 %si f(b) y f(m) tienen signos opuestos
            fprintf('Nuevo limite b = %.*f',fix,m);
            fprintf('\n');
            b=m;
        else%si f(b) y f(m) NO tienen signos opuestos
            fprintf('Nuevo limite a = %.*f',fix,m);
            fprintf('\n');
            a=m;
        end
        if abs(b-a)<e %se comprueba el error permitido
            fprintf('Error = %.*f',fix,abs(b-a));
            fprintf('\n');
            break
        end
        x=b;
        fb=eval(f);
    end
    fprintf('Valor aproximado de X = %.*f',fix,(a+b)/2);
end
            
