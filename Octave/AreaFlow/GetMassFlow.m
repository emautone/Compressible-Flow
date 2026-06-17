function [ MassFlow ] = GetMassFlow(Pt,Tt,A,MFP)
% Calcula o fluxo de massa a partir do MFP
% Escoamento de área variável

    MassFlow = MFP*Pt*A/sqrt(Tt);
end