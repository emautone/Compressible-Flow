function [ P_Pstar ] = GetFannoP_Pstar(gamma,M)
% Version 06/06/2016
% Calcula  a razao Pressao estática / Pressao crítica (M=1) 
% para um Mach de entrada
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    P_Pstar = 1/M*((2/(gamma+1)*(1+(gamma-1)/2*M^2) )^-0.5);
end