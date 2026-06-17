function [ MFP ] = GetMFP(gamma,R,M)
% Calcula o parâmetro de fluxo de massa
% Escoamento de área variável

    MFP = M*sqrt(gamma/R)/(1+(gamma-1)/2*M*M)^((gamma+1)/2/(gamma-1));
end

