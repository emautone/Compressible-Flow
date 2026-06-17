function [ A_Astar ] = GetA_Astar(gamma,M)
% Calcula a razao de área da secao / área critica para um dado Mach
% Escoamento de área variável

    A_Astar = 1/M*(2/(gamma+1)*(1+(gamma-1)/2*M*M))^((gamma+1)/2/(gamma-1));
end