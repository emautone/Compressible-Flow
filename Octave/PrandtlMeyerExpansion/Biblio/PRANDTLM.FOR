      SUBROUTINE PRANDTLM
C
C     CALCULO DA EXPANSAO DE PRANDTL-MAYER - LIP POINT
C
      COMMON /CONTRL/ DELTA,NI,NT,ICOR,E1,E2,E3,E4,E5,IUNITS,PI,RAD
      COMMON /PROPTY/ G,RG,CP,TS,PS,PA,GC,GL
      REAL M
      COMMON /DATA/ X1,Y1,U1,V1,Q1,A1,P1,R1,T1,M1,X2,Y2,U2,V2,Q2,A2,P2,
     1R2,T2,M2,X3,Y3,U3,V3,Q3,A3,P3,R3,T3,M3,X4,Y4,U4,V4,Q4,A4,P4,R4,T4,
     2M4,LP,LM,LE,L12,L0
      REAL M1,M2,M3,M4,LP,LM,LE,L12,L0

      MPM2=(((PS/PA)**((G-1)/G)-1)*2/(G-1))**0.5
      T4=TS/(1+(G-1)/2*MPM2**2)
      P4=PA
      R4=PA/RG/T4
      C=SQRT(G*RG*T4)
      Q4=MPM2*C

      B=(G+1)/(G-1)
      C1=SQRT((M4**2-1)/B)
      C2=SQRT((MPM2**2-1)/B)
      D1=SQRT(M4**2 - 1)
      D2=SQRT(MPM2**2 - 1)
      DELTAP=SQRT(B)*(ATAN(C2)-ATAN(C1))-(ATAN(D2)-ATAN(D1))
      A4=DELTAP+A4
      U4=Q4*COS(A4)
      V4=Q4*SIN(A4)
      M4=MPM2
      RETURN
      END








     

