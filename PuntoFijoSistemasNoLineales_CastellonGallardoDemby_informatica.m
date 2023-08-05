%-------------La libreria syms es de pago, la matriz jacobiana y derivadas seran 
%calculadas de manera estatica---------------------
%Sistema 2x2
%En este ejemplo despejaremos esta funcion (x^2)+(y^2)+8-10*x para obtener x
%y despejaremos esta (x)*(y^2)+x+8+10*y para obtener y
H='((x^2)+(y^2)+8)/10';
P= '-((x)*(y^2)+x+8)/10';
%valores iniciales
x=0.5;
y=0.2;
%derivadas para verificar la convergencia
dHdx='(2*x)/10';
dHdy='(2*y)/10';
dPdx='((-y^2)-1)/10';
dPdy='(-2*y*x)/10';
if(eval(dHdx)>=1 || eval(dHdy)>=1 || eval(dPdx)>=1 || eval(dPdy)>=1)
    error("El sistema no converge revise los valores iniciales");
end
%numero de iteraciones maximas
itm=4;
%numero de decimales (fix)
fix=8;
for i=1:1:itm
    x1=eval(H);
    y1=eval(P);
    fprintf('x%d = %.*f',i,fix,x1);
    fprintf('\n');
    fprintf('y%d = %.*f',i,fix,y1);
    fprintf('\n');
    x=x1;
    y=y1;
end