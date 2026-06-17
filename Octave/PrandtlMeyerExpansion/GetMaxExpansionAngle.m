function [MaxExpansionAngle] = GetMaxExpansionAngle(gamma,MachIn)
                               
% Calcula o máximo angulo do vetor velocidade após a expansao (radianos)
% de um escoamento supersônico  
% Escoamento Supersônico em Expansão de Prandtl-Meyer
% MachIn representa o numero de Mach do escoamento supersônico antes da expansão
% O numero de Mach do escoamento supersônico após a expansão é infinito

b = (gamma+1)/(gamma-1);
MaxSonicExpansionAngle = -pi/2*(sqrt(b)-1); % para MachIn = 1
MaxExpansionAngle = MaxSonicExpansionAngle-GetSonicExpansionAngle(gamma,MachIn);

end