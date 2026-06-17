function [ Mach ] = GetRayleighMachFromTt_Ttstar(gamma,Tt_Ttstar, Minitial)
% Calcula  o Mach para uma razao Temperatura total / Temperatura total crítica 
% Escoamento compressível com troca de calor (Rayleigh)
% Mach inicial indica se seçao é supersônica ou subsônica e deve ser
% próximo do resultado

    Mach = Minitial;

    if (Tt_Ttstar> 1.01) || (Tt_Ttstar< 0.99)
      MachOld = 100;
      while abs(Mach-MachOld) > 1e-5
         
         A = 2*(gamma+1)*Mach^2;
         B =( 1+gamma*Mach^2)^2;
         C = 1+(gamma-1)/2*Mach^2;
         F =Tt_Ttstar-A/B*C;
         
         dAdM = 4*(gamma+1)*Mach;
         dBdM = 4*gamma*(1+gamma*Mach^2)*Mach;
         dCdM = (gamma-1)*Mach;
         dFdMach = -1/B^2*(B*C*dAdM-A*C*dBdM+B*A*dCdM);
         
         MachOld = Mach;
         Mach = Mach-F/dFdMach;   % Método de Newton-Raphson
      end;   
    else Mach = 1;
    end;  
    
end