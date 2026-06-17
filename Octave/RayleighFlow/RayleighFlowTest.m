%Teste de Rayleigh Flow (escoamento compressível com troca de calor)
clear;

M =zeros(1000);
TT=zeros(1000);
PP = zeros(1000);
M(1)=0;
TT(1)=0;
PP(1)=0;
for i=2:1000
   M(i) = M(i-1)+0.01;
   TT(i) = GetRayleighTt_Ttstar(1.4,M(i));
   PP(i) = GetRayleighPt_Ptstar(1.4,M(i));
end;   

subplot(1,2,1); plot(M,TT);
subplot(1,2,2); plot(M,PP);
    