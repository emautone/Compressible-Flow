function [ Pt_Pstar ] = GetPt_PstarToSonic(gamma)
% Version 05/06/2016
% Calcula a pressao de estagnaçao mínima para estabelecer escoamento sônico
% Escoamento de área variável
% by Mautone & Gabaldo
% Te.Co.S srl

    Pt_Pstar = 1/(2/(gamma+1))^(gamma/(gamma-1));
end
