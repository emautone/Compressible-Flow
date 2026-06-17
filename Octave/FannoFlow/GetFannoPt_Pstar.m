function [ Pt_Pstar ] = GetFannoPt_Pstar(gamma,M)
% Version 26/05/2024
% Calcula  a razao Pressao total / Pressao crítica (M=1)
% para um Mach de entrada
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    Pt_Pstar = 1/M*((2/(gamma+1)*(1+(gamma-1)/2*M^2) )^((gamma+1)/2/(gamma-1));
end
