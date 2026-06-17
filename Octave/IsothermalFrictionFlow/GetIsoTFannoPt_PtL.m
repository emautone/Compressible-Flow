function [Pt_PtL] = GetIsoTFannoPt_PtL(gamma,M)
% Version 05/06/2016
% Calcula a razao pressao total / pressao total limite 
% para um dado Mach de entrada e condiçao limite M=1/sqrt(gamma)
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    Pt_PtL =   1/(sqrt(gamma)*M)...
                     *((2*gamma)/(3*gamma-1)*(1+(gamma-1)/2*M^2))^(gamma/(gamma-1));
end