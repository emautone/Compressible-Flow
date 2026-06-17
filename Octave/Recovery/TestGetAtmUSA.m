clc;
clear;

r0 = 6356766;

H = 0
Z = r0*H/(r0-H)
[P,T,rho,a] = GetAtmUSA(Z)
disp("...")

H = 11000
Z = r0*H/(r0-H)
[P,T,rho,a] = GetAtmUSA(Z)
disp("...")

H = 20000
Z = r0*H/(r0-H)
[P,T,rho,a] = GetAtmUSA(Z)
disp("...")

H = 32000
Z = r0*H/(r0-H)
[P,T,rho,a] = GetAtmUSA(Z)
disp("...")

H = 47000
Z = r0*H/(r0-H)
[P,T,rho,a] = GetAtmUSA(Z)
disp("...")

H = 51000
Z = r0*H/(r0-H)
[P,T,rho,a] = GetAtmUSA(Z)

disp("...")
H = 71000
Z = r0*H/(r0-H)
[P,T,rho,a] = GetAtmUSA(Z)
disp("...")

H = 84852
Z = r0*H/(r0-H)
[P,T,rho,a] = GetAtmUSA(Z)
disp("...")

n = 500;
Z = 0;
deltaZ = 85000/n;
for i=1:n
   [P,T,rho,a] = GetAtmUSA(Z);
   Zgeometric(i) = Z;
   Hgeopotential(i) = r0*Z/(r0+Z);
   Tatm(i) = T;
   Patm(i) = P;
   Roatm(i) = rho;
   Vsom(i) = a;
   Z = Z + deltaZ;
end

figure(1);
subplot(1,4,1);
plot(Tatm,Hgeopotential);
grid;
title("H geopotential (m) X T (K) ");

subplot(1,4,2);
semilogx(Patm,Hgeopotential);
grid;
title("H geopotential (m) X P (Pa) ");

subplot(1,4,3);
semilogx(Roatm,Hgeopotential);
grid;
title("H geopotential (m) X Rho (kg/m3) ");

subplot(1,4,4);
plot(Vsom,Hgeopotential);
grid;
title("H geopotential (m) X a (m/s) ");