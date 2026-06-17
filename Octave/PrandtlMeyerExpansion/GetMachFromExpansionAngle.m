function [MachOut] = GetMachFromExpansionAngle(gamma,SonicExpansionAngle)
  %

  if SonicExpansionAngle > 0 
    SonicExpansionAngle = -SonicExpansionAngle;    
  endif
  
  b = (gamma+1)/(gamma-1);
  Mach = 1.1;
  MachOld = 100;
  MaxSonicExpansionAngle = -pi/2*(sqrt(b)-1); % para MachIn = 1
  if SonicExpansionAngle <= MaxSonicExpansionAngle 
    disp("** Error ** Expansion Angle greater than Maximum !!!");
    MachOut = 1e4;
  else
    while abs(Mach-MachOld) > 1e-5
      c = sqrt(Mach*Mach-1);
      F = SonicExpansionAngle+sqrt(b)*atan(c/sqrt(b))-atan(c);
      dFdMach = (b/(b+c*c)-1/(1+c*c))*Mach/c;
      MachOld = Mach;
      Mach = Mach-F/dFdMach;   % Metodo de Newton-Raphson
    end; 
     MachOut = Mach;
  endif
end
