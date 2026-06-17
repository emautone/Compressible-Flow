function [Tt2_Ttstar] = GetRayleighTt2_Ttstar( gamma, cp, ...
                                                                                   AirFuelRatio, FuelHeat, M1, Tt1 )
%   Aumento de temperatura total devido a liberaçao de calor por combustao
%   Escoamento compresssível com troca de calor
%   Estaçao 1 é a entrada do escoamento M1 e Tt1

    TotalHeat = FuelHeat/(1+AirFuelRatio);
    Tt2_Tt1 = 1+TotalHeat/(cp*Tt1);
    Tt1_Ttstar = GetRayleighTt_Ttstar(gamma,M1);
    Tt2_Ttstar = Tt1_Ttstar*Tt2_Tt1;
end

