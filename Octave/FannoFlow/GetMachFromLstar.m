function [Mach] = GetMachFromLstar(gamma, f, D, L, Minitial)
% Version 26/05/2024
% Calcula o Mach para um comprimento critico de duto
% Mach inicial indica se seçao de entrada é supersônica ou subsônica
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    Mach = Minitial;
    if (Mach> 1.01) || (Mach< 0.99)
      MachOld = 30;
      while abs(Mach-MachOld) > 1e-5
         F = 4*f*L/D-GetFanno4fLstar_D(gamma,Mach);
         dFdMach = 2/gamma/Mach^3-(gamma+1)/2/gamma*1/Mach...
                                 *(1-(gamma-1)/2*Mach^2)/(1+(gamma-1)/2*Mach^2);
         MachOld = Mach;
         if (Mach<1) Mach = Mach-F/dFdMach;   % Método de Newton-Raphson
         else Mach = Mach+F/dFdMach;
         endif
      end;
    else Mach = 1;
    end;
end
