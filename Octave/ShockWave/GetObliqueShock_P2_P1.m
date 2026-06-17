function [ theta,delta,Mach2,T2_T1,ro2_ro1 ] = GetObliqueShock_P2_P1(gamma,Mach1,P2_P1)
%  Cálculo de choque oblíquo fraco a partir de P2/P1 estático
%  Escoamento compressível / gás ideal

    sinTheta = sqrt( (P2_P1+(gamma-1)/(gamma+1))...
                    /(2*gamma*Mach1^2/(gamma+1)));   
    theta = asin(sinTheta);
    
    cotDelta = tan(theta)*( ((gamma+1)*Mach1^2-(2*(Mach1^2*(sin(theta))^2-1)))...
                           /(2*(Mach1^2*(sin(theta))^2-1)));
    delta = atan(1/cotDelta);
    
    Mach2_2 = 1/(sin(theta-delta))^2 ...
             *1/(tan(theta)/tan(theta-delta)*(gamma+1)/2-(gamma-1)/2);            
    Mach2 = sqrt(Mach2_2);
       
    T2_T1 = (2*gamma*Mach1^2*(sin(theta))^2-(gamma-1)) ...
                   *((gamma-1)*Mach1^2*(sin(theta))^2+2) ...
                   /((gamma+1)^2*Mach1^2*(sin(theta))^2);
                
    ro2_ro1= ((gamma+1)*Mach1^2*(sin(theta))^2) ...
                     /((gamma-1)*Mach1^2*(sin(theta))^2+2);
end

