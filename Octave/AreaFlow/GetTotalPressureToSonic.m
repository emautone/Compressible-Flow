function [ TotalPressure ] = GetTotalPressureToSonic(gamma,Pstar)
% Calcula a pressao de estagnaçao mínima para estabelecer escoamento sônico
% Escoamento de área variável

    TotalPressure = Pstar/(2/(gamma+1))^(gamma/(gamma-1));
end