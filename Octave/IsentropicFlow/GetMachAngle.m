function [ alpha ] = GetMachAngle(Mach)
% Version 25/05/2026
% Calcula o ângulo de Mach para a linha característica de um ponto do escoamento
% Escoamento supersônico compressível isentrópico
% ângulo em radianos
% JEMautone Barros
%
 alpha = asin(1/Mach);
endfunction
