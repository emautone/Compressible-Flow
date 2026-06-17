function [ Mach ] = GetMachFromPt_P(gamma,Pt_P)
% Version 05/06/2016
% Calcula  o Mach para uma razao Pressao total / Pressao estática 
% Escoamento compressível
% by Mautone & Gabaldo
% Te.Co.S srl

    Mach =sqrt((Pt_P^((gamma-1)/gamma)-1)*2/ (gamma-1));
end