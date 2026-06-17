Ae_At = 120;      % Razão entre a área de saída da tubeira e a área da garganta
gama = 1.217;    % Razão dos calores específicos do gás de exaustão do motor
Me = GetMachFromA_Astar(gama, Ae_At, 2)    % Número de Mach na seção de saída da tubeira
Pt1 = 97e5;     % Pressão total do escoamento do motor (pressão na câmara de combustão  do motor), em Pa
P1 = Pt1/GetPt_P(gama,Me)       % Pressão estática na saída da tubeira do motor
ExpansionAngle = -rad2deg(GetMaxExpansionAngle(gama,Me))
P2 = 1;                % Pressão atmosférica local a 80 km de altitude, em Pa
ExpansionAngle = -rad2deg(GetSupersonicExpansionAngleFromP2_P1(gama,Me,P1,P2))
