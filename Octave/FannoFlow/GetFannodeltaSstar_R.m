function [ deltaSstar_R ] = GetFannodeltaSstar_R(gamma,M)
% Version 26/05/2024
% Calcula  a razao (s-s*)/R
% para um Mach de entrada (M) até Mach crítico (M*=1)
% Escoamento compressível com atrito - Fanno flow
% by Mautone & Gabaldo
% Te.Co.S srl

    deltaSstar_R = -log(1/M*( (2/(gamma+1)...
                             *(1+(gamma-1)/2*M^2))^((gamma+1)/2/(gamma-1))));
end
