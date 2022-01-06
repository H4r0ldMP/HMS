fileID = fopen('Ensayo_13_sr2.txt','w'); 
t=length(x_1);
tiempo=[0.01:0.01:t*0.01];
t1=tiempo';
y = [tiempo;x_1';y_1';z_1';x_2';y_2';z_2']
plot(tiempo,x_1,tiempo,y_1,tiempo,z_1);
figure;
plot(tiempo,x_2,tiempo,y_2,tiempo,z_2);
fprintf(fileID,'%10.3f %10.3f %10.3f %10.3f %10.3f %10.3f %10.3f \n',y);
save('Datos3.mat','x_1','y_1','z_1','x_2','y_2','z_2');
fclose(fileID);
