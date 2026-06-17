function [FourfLmax_D] = GetIsoTFanno4fLmax_D(gamma, M)
% Version 05/06/2016
% Calcula o fator de Fanno (4*f*Lmax/D) para um dado Mach de entrada
% e condiçao limite M=1/sqrt(gamma)
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    FourfLmax_D = (1-gamma*M^2)/(gamma*M^2)+log(gamma*M^2);                     
end

