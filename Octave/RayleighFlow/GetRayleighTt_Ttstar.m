function [ Tt_Ttstar ] = GetRayleighTt_Ttstar(gamma,M)
% Calcula  a razao Temperatura total / Temperatura crítica (M=1) para um Mach
% Escoamento compressível com troca de calor

    Tt_Ttstar = (2*(gamma+1)*M^2/(1+gamma*M^2)^2)*(1+(gamma-1)/2*M^2);
end