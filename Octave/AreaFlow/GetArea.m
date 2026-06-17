function [ Area ] = GetArea(Pt,Tt,MassFlow,MFP)
% Calcula a área do escoamento relativa ao MFP
% Escoamento de área variável

    Area = MassFlow*sqrt(Tt)/Pt/MFP;
end