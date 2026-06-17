function [SupersonicExpansionAngle] = ...
                     GetSupersonicExpansionAngleFromP2_P1(gamma,MachIn,PIn,POut)
% Calcula o angulo do vetor velocidade após a expansao de um escoamento sônico 
% (em radianos) 
% para dada a pressão estatica no excoamento supersonico antes da exopansao(Pin)
% e a pressao estática  após a expansao(POut)
% MachIn representa o numero de Mach do escoamento supersônico antes a expansão
% Escoamento Supersonico em Expansão de Prandtl-Meyer                     
                                         
  % Calcular pressao total PtIn
  
  PtIn = PIn*(1+(gamma-1)/2*MachIn*MachIn)^(gamma/(gamma-1));

  % Calcular MachOut para POut estática e PtOut = Ptin (escoamento isentropico)
  
  MachOut = sqrt(2/(gamma-1)*((PtIn/POut)^((gamma-1)/gamma)-1));

  % Calcular o angulo de expansao do escoamento

  SupersonicExpansionAngle = GetSupersonicExpansionAngle(gamma,MachIn,MachOut);
  
endfunction
