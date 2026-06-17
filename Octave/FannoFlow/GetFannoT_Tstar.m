function [ T_Tstar ] = GetFannoT_Tstar(gamma,M)
% Version 06/06/2016
% Calcula  a razao Temperatura estática / Temperatura crítica (M=1) 
% para um Mach de entrada
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    T_Tstar = 1/(2/(gamma+1)*(1+(gamma-1)/2*M^2));
end