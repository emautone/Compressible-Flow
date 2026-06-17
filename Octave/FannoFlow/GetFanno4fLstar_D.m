function [FourfLstar_D] = GetFanno4fLstar_D(gamma,M)
% Version 06/06/2016
% Calcula o fator de Fanno crítico (M=1) 
% para um Mach de entrada
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    Aux1 = (1+(gamma-1)/2*M^2);
    Aux2 = (2/(gamma+1)*Aux1)^-1;
    Aux3 = log((M^2)*Aux2);
    Aux4 = (gamma+1)/(2*gamma)*Aux3;
    FourfLstar_D = (1-M^2)/(gamma*M^2)+Aux4;                   
end