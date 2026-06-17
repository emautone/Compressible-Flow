clc;
clearvars;

gamma = 1.4;
M = 1:0.1:6;
for i = 1:51
  nu(i) =  GetSonicExpansionAngle(gamma,M(i));
  nu(i) = -rad2deg(nu(i));
  nuMax(i) = GetMaxExpansionAngle(gamma,M(i));
  nuMax(i) = -rad2deg(nuMax(i));
endfor

figure (1);
plot(M,nu);
xlabel("Mach after expansion");
ylabel("Expansion Angle (degrees)");
grid;

figure(2);
plot(M,nuMax);
xlabel("Mach before expansion");
ylabel("Expansion Angle (degrees)");
grid;
