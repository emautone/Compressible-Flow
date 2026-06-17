function [ Mach ] = GetMachFromTt_T(gamma,Tt_T)
% Version 05/06/2016
% Calcula  o Mach para uma razao Temperatura total / Temperatura estática 
% Escoamento compressível
% by Mautone & Gabaldo
% Te.Co.S srl

    Mach =sqrt((Tt_T-1)*2/ (gamma-1));
end