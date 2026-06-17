function [SupersonicExpansionAngle] = ...
                               GetSupersonicExpansionAngle(gamma,MachIn,MachOut)                         
% Calcula o angulo do vetor velocidade após a expansao (radianos)
% de um escoamento supersônico  
% Escoamento Supersônico em Expansão de Prandtl-Meyer
% MachIn representa o numero de Mach do escoamento supersônico antes da expansão
% MachOut representa o numero de Mach do escoamento supersônico após a expansão

SonicExpansionAngleOut = GetSonicExpansionAngle(gamma,MachOut);
SonicExpansionAngleIn = GetSonicExpansionAngle(gamma,MachIn);
SupersonicExpansionAngle = SonicExpansionAngleOut-SonicExpansionAngleIn;

end