%Actividad leg_2
%Limpieza de pantalla
clear all
close all
clc
%Calculamos las matrices de transformación homogénea
H0=SE3; %Inicializamos el punto de origen 
H1=SE3(rotx(pi/2), [0 0 1]); %Inicia 0 prima para completar el ejercicio
H2=SE3(rotz(pi/2), [0 1 0]); %0 a 1 final
H3=SE3(rotz(-pi/2), [0 -1 0]); %1 prima 1 final 
H4=SE3(rotz(pi/2), [0 0 0]); %1 a 2 final
H5=SE3(rotx(pi/2), [0 -0.5 0]); 
H6 = SE3(rotz(0), [0 0 0.5]); 
%Porque ese hace esta transformacion?
H20= H1*H2;
H30= H20*H3; %Matriz de transformación homogenea global de 3 a 0 
H40 = H30*H4;
H50 = H40*H5;
H60 = H50*H6;
%Esta parte no la cambio
x=[0 0 0 0 0 0 0 0 0 0];
y=[0 0 0 0 0 0 0 0 0 0];
z=[0 0 0 0 0 0 0 0 0 0];

plot3(x, y, z,'LineWidth', 1.5); axis([-1 6 -1 8 -1 4]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-1 2 -1 4 -1 0])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-1 2 -1 4 -1 0])
%Realizamos una animación para la siguiente trama
 pause;
 tranimate(H1, H20,'rgb','axis', [-1 2 -1 4 -1 0])
% %Realizamos una animación para la siguiente trama
 pause;
 tranimate(H20, H30,'rgb','axis', [-1 2 -1 4 -1 0])
 pause;
 tranimate(H30, H40,'rgb','axis', [-1 2 -1 4 -1 0])
 % %Realizamos una animación para la siguiente trama
 pause;
 tranimate(H40, H50,'rgb','axis', [-1 4 -1 6 -1 2])
 % %Realizamos una animación para la siguiente trama
 pause;
 tranimate(H50, H60,'rgb','axis', [-1 4 -1 6 -1 2])
 disp(H60)