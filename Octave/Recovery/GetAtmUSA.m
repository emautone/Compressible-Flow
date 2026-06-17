function [P,T,rho,a] = GetAtmUSA(Z)
   % ----------------------------------------------------------------------
   % Rotine for USA Atmosphere
   % Version 28/10/2020
   % by Mautone & Gabaldo
   % Te.Co.S srl
   % ----------------------------------------------------------------------
   % Structure Declarations
   % 
   Air = struct('gamma', 1.4, 'R', 8314.32/28.9644, 'M', 28.9644,...
                'cp', 1003.0, 'Pref', 101325, 'Tref', 288.15);     
   %       
   % ----------------------------------------------------------------------
   % 
   r0 = 6356766; % Raio da Terra, em metros  
   g0 = 9.806650; % aveleração da gravidade ao nível do mar.em m/s2
   g_g0 = 1;  
   H = r0*Z/(r0+Z)*g_g0;      
   if ( H <= 11000 ) 
      % for less of 11,000 meters
      Hm = 0;
      Tm = Air.Tref;
      Pm = Air.Pref;
      Lm = (216.65-288.15)/(11000-0);
      T = Tm+Lm*(H-Hm);
      P = Pm*(T/Tm)^(-g0/Air.R/Lm);   
   elseif (11000 < H) && (H <= 20000)     
          % between 11000 and 20000 meters
          Hm = 11000;
          Tm = 216.65;
          Pm = 22632.04;
          Lm = 0;
          T = Tm;
          P = Pm*exp(-g0/Air.R/Tm*(H-Hm));    
   elseif (20000 < H) && (H <= 32000)
          % between 20000 and 32000 meters
          Hm = 20000;
          Tm = 216.65;
          Pm = 5474.875;
          Lm = (228.65-216.65)/(32000-20000);
          T = Tm+Lm*(H-Hm);
          P = Pm*(T/Tm)^(-g0/Air.R/Lm);
   elseif (32000 < H) && (H <= 47000) 
          % between 11000 and 20000 meters
          Tm = 228.65;
          Pm = 868.0153;
          Lm = 0.0028;
          T = Tm+Lm*(H-32000);
          P = Pm*(T/Tm)^(-g0/Air.R/Lm); 
   elseif (47000 < H) && (H <= 51000) 
          % between 47000 and 51000 meters
          Tm = 270.65;
          Pm = 110.9057;
          Lm = 0;
          T = Tm;
          P = Pm*exp(-g0/Air.R/Tm*(H-47000)); 
   elseif (51000 < H) && (H <= 71000) 
          % between 51000 and 71000 meters
          Tm = 270.65;
          Pm = 66.93847;
          Lm = -0.0028;
          T = Tm+Lm*(H-51000);
          P = Pm*(T/Tm)^(-g0/Air.R/Lm); 
   elseif (71000 < H) && (H <= 84852) 
          % between 71000 and 84852 meters
          Tm = 214.65;
          Pm = 3.956387;
          Lm = (186.87-214.65)/(84852-71000);
          T = Tm+Lm*(H-71000);
          P = Pm*(T/Tm)^(-g0/Air.R/Lm);        
   else
     % Altitude acima do limite do modelo da Atmosfera USA!
     T = 0;
     P = 0;
   end
   rho = (P/(Air.R*T));
   a = sqrt( Air.gamma*T*Air.R);    
end