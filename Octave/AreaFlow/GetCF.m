function Cf = GetCf(gamma,Pc,Pe,P0,Ae_At)
   Cf=gamma*(2/(gamma-1)*(2/(gamma+1))^((gamma+1)/(gamma-1))*...
             (1-(Pe/Pc)^((gamma-1)/gamma)))^0.5+(Pe/Pc-P0/Pc)*Ae_At;
endfunction
