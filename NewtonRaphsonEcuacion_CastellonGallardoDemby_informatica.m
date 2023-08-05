%Ingreso de datos%
x = input('Ingrese el X inicial Ej: 1 :');
e = input('Ingrese el error permitido Ej: 10^-5 :');
f = input('Ingrese la función entre comillas Ej: "exp(3*x)-4" :');
df = input('Ingrese la derivada de la función entre comillas (para el Ejemplo anterior: "3*exp(3*x)") :');

%-------------La libreria syms es de pago, en caso de tenerla se puede hallar la
%derivada con las siguientes 2 lineas---------------------
%syms x
%df= diff(f);

%El maximo de iteraciones es 30 por defecto en caso que el programa no
%llegue al error minimo esperado
itm=30;
for k=1:itm        
        xn=x-eval(f)/eval(df);
        %fix de 8 en la siguiente linea para X
        fprintf('x%d = %.*f',k,8,xn);
        fprintf('\n');
        if abs(xn-x)<e
            %fix de 8 en la siguiente linea para el Error
            fprintf('Error = %.*f',8,abs(xn-x));
            break
        end
        x=xn;
end