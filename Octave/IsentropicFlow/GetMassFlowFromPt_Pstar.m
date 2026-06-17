function [ mdot ] = GetMassFlowFromPt_Pstar(gamma,R,Tt,Pt,Pstar,Astar)
% Version 05/06/2016
% Calcula  a vazao mássica em funçao da razao Pressao total / Pressao estática 
% Escoamento compressível isentrópico
% by Mautone & Gabaldo
% Te.Co.S srl

Pt_Pstar = Pt/Pstar;
Pt_PstarCritical = GetTotalPressureToSonic(gamma);

a0 = sqrt(gamma*R*Tt);
if Pt_Pstar > Pt_PstarCritical
   mdot = Pt*Astar/a0*gamma*(2/(gamma+1))^((gamma+1)/(2*(gamma-1)));
else
   mdot = Pt*Astar/a0*(1/Pt_Pstar)^(1/gamma)...
              *sqrt(2*gamma*gamma/(gamma-1)*(1-(1/Pt_Pstar)^((gamma-1)/gamma)));
end

end

