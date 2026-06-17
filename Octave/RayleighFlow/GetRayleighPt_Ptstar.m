function [ Pt_Ptstar ] = GetRayleighPt_Ptstar(gamma,M)
% Calcula  a razao Pressao total / Pressao crítica (M=1) para um Mach
% Escoamento compressível com troca de calor

    Pt_Ptstar = (gamma+1)/(1+gamma*M^2)...
                       *((2/(gamma+1)*(1+(gamma-1)/2*M^2) )^(gamma/(gamma-1)));
end