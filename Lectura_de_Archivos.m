clear; close all
fileID = fopen('Ensayo_13_3.txt','r');
formatSpec = '%f %f %f %f %f %f %f ';
sizeA = [7 inf];    
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);
plot(A(1,:),[A(2:4,:)])
title('Lecturas del Acelerómetro 1')
legend('Eje x','Eje y', 'Eje z')
xlabel('Tiempo (s)')
ylabel('Aceleración (m/s^2)')
grid
xlim([15 45])
figure
plot(A(1,:),[A(5:7,:)])
title('Lecturas del Acelerómetro 2')
grid
legend('Eje x','Eje y', 'Eje z')
xlabel('Tiempo (s)')
ylabel('Aceleración (m/s^2)')
xlim([15 45])