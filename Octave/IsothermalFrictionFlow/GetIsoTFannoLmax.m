function [Lmax] = GetIsoTFannoLmax(gamma, f, D, M)
% Version 05/06/2016
% Calcula o comprimento limite onde M=1/sqrt(gamma) para um dado 
% Mach de entrada
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    Lmax = D/(4*f)*GetIsoTFanno4fLmax_D(gamma,M);                     
end