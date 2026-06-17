function [ Tt_T ] = GetTt_T(gamma,M)
% Version 05/06/2016
% Calcula  a razao Temperatura total / Temperatura estática para um Mach
% Escoamento compressível
% by Mautone & Gabaldo
% Te.Co.S srl

    Tt_T = (1+(gamma-1)/2*M*M);
end