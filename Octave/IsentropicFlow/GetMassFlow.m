function [ MassFlow ] = GetMassFlow(Pt,Tt,Area,MFP)
% Calcula o fluxo de massa a partir do MFP
% Escoamento de área variável

    MassFlow = MFP*Pt*Area/sqrt(Tt);
end