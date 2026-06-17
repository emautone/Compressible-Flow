function [ Area ] = GetAreaFromMFP(Pt,Tt,MassFlow,MFP)
% Calcula a área da secao a partir do MFP
% Escoamento de área variável

    Area = MassFlow*sqrt(Tt)/( Pt*MFP);
end