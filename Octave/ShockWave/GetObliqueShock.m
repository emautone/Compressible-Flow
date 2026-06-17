function [ theta,Mach2,P2_P1,T2_T1,ro2_ro1 ] = GetObliqueShock(gamma,Mach1,delta)
%  Cálculo de choque oblíquo fraco
%  Escoamento compressível / gás ideal

    theta = 35*pi/180;                        %valor inicial para cálculo de choque oblíquo fraco
    if Mach1 > 1                                  % Mach inicial deve se supersônico
      thetaOld = 1;
      while abs(theta-thetaOld) > 1e-5
         F = -2/tan(delta)*(Mach1^2*(sin(theta))^2-1)...
               +(gamma+1)*Mach1^2*tan(theta)...
               -2*Mach1^2*(sin(theta))^2*tan(theta)...
               +2*tan(theta);
         dFdtheta = -2/tan(delta)*Mach1^2*2*sin(theta)*cos(theta)...
                             +(gamma+1)*Mach1^2*(sec(theta))^2 ...
                             -2*Mach1^2*((sec(theta))^2-(cos(theta))^2+(sin(theta))^2) ...
                             +2*(sec(theta))^2;
         thetaOld = theta;
         theta = theta-F/dFdtheta;   % Método de Newton-Raphson
      end;   
    else theta = delta;
    end;      
    
    Mach2_2 = 1/(sin(theta-delta))^2 ...
                        *1/(tan(theta)/tan(theta-delta)*(gamma+1)/2-(gamma-1)/2);            
    Mach2 = sqrt(Mach2_2);
    
    P2_P1 = (2*gamma*Mach1^2*(sin(theta))^2-(gamma-1))/(gamma+1);
    
    T2_T1 = (2*gamma*Mach1^2*(sin(theta))^2-(gamma-1)) ...
                   *((gamma-1)*Mach1^2*(sin(theta))^2+2) ...
                   /((gamma+1)^2*Mach1^2*(sin(theta))^2);
                
    ro2_ro1= ((gamma+1)*Mach1^2*(sin(theta))^2) ...
                     /((gamma-1)*Mach1^2*(sin(theta))^2+2);
end

