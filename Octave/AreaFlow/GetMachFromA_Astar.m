function [ Mach ] = GetMachFromA_Astar(gamma, A_Astar, Minitial)
% Calcula o Mach para uma razao de área da secao / área critica 
% Escoamento de área variável
% Mach inicial indica se seçao é supersônica ou subsônica

    Mach = Minitial;
    if Mach >= 1 
       Mach = 10;
    else Mach = 0.01;   
    end;   

    if (A_Astar> 1.01) || (A_Astar< 0.99)
      MachOld = 100;
      while abs(Mach-MachOld) > 1e-5
         A = 2/(gamma+1);
         B = (gamma-1)/2;
         C = (gamma+1)/2/(gamma-1);
         F =A_Astar-1/Mach*(A*(1+B*Mach*Mach))^C;
         dFdMach = ...
       -(C*(A*(1+B*Mach*Mach))^(C-1)*2*A*B*Mach*Mach-(A*(1+B*Mach*Mach))^C) ...
       /(Mach*Mach);
         MachOld = Mach;
         Mach = Mach-F/dFdMach;   % Método de Newton-Raphson
      end;   
    else Mach = 1;
    end;  
    
end