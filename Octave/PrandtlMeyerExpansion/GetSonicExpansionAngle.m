function [ SonicExpansionAngle ] = GetSonicExpansionAngle(gamma,MachOut)
% Calcula o angulo do vetor velocidade após a expansao de um escoamento sônico 
% (radianos) 
% Escoamento Sônico em Expansão de Prandtl-Meyer
% MachOut representa o numero de Mach do escoamento supersônico após a expansão

b = (gamma+1)/(gamma-1);
c = sqrt(MachOut*MachOut-1);
SonicExpansionAngle = -sqrt(b)*atan(c/sqrt(b))+atan(c);

end