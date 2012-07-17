clear
close
clc

fd=fopen('G.dec','r');
id=fscanf(fd,'%d');
ID=fft(id);
ID=abs(ID);
ID=ID/length(ID);
F=linspace(0,20,length(ID));
plot(F(1:1000),ID(1:1000));
grid on;

fclose(fd);
fd=fopen('Sintp.dec','r');
od=fscanf(fd,'%d');
OD=fft(od);
OD=abs(OD);
OD=OD/length(OD);
figure
plot(F(1:1000),OD(1:1000));
grid on;