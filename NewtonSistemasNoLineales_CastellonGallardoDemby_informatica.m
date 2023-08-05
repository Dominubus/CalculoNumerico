%-------------La libreria syms es de pago, la matriz jacobiana y derivadas seran 
%calculadas de manera estatica---------------------
%Sistema 2x2
f1='(x^2)+(y^2)-10';
f2= 'x*y-4';
%derivadas para la matriz jacobiana
df1dx='(2*x)';
df1dy='2*y';
df2dx='y';
df2dy='x';
%valores iniciales
x=3;
y=1.5;
%numero de iteraciones maximas
itm=4;
%numero de decimales (fix)
fix=8;
for i=1:1:itm
    d11=eval(df1dx);
    d12=eval(df1dy);
    d21=eval(df2dx);
    d22=eval(df2dy);
    J = [d11 d12; d21 d22]; %matriz jacobiana
    u=eval(f1);
    v=eval(f2);
    XY = [u;v]; 
    XY = [x;y]-(J\XY); %formula del metodo
    x=XY(1);
    y=XY(2);
    fprintf('x%d = %.*f',i,fix,x);
    fprintf('\n');
    fprintf('y%d = %.*f',i,fix,y);
    fprintf('\n');
end