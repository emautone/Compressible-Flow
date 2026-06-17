function [Lstar] = GetFannoLstar(gamma,f,D,M)
% Version 06/06/2016
% Calcula o comprimento crítico (M=1) 
% para um Mach de entrada
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    Lstar = D/(4*f)*GetFanno4fLstar_D(gamma,M);                     
end