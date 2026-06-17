function [ Pt_P ] = GetPt_P(gamma,M)
% Version 05/06/2016
% Calcula  a razao Pressao total / Pressao estática para um Mach
% Escoamento compressível
% by Mautone & Gabaldo
% Te.Co.S srl

    Pt_P = (1+(gamma-1)/2*M*M)^(gamma/(gamma-1));
end