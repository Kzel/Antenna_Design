%%Q1
S11 =0.65*exp(1i*(163/180)*pi);
S21 =3.06*exp(1i*(60/180)*pi);
S12 =0.054*exp(1i*(51/180)*pi);
S22 =0.42*exp(1i*(-41/180)*pi);
D=S11*S22-S12*S21;
% module de D =0.1152 <1 inconditionnellement stable

%%Q2
K=(1+abs(D)^2-abs(S11)^2-abs(S22)^2)/(2*abs(S12)*abs(S21));
% K>1 	 alors	 l adaptation parfaite	en	entrée	et	en	sortie	est	possible

%%Q3
MAG=(abs(S21)/abs(S12))*(K-sqrt((K^2)-1));
MAGdb=10*log10(MAG);
Gt=abs(S21)^2;
Gtdb=10*log10(Gt);
% on gagne 4.8 dB grâce à l'adaptation
% Gt=|s21|^2=3.06^2=9.36dB
% MAG=14,5008 dB

%%Q4
C1=S11-D*conj(S22);
B1=1+abs(S11)^2-abs(S22)^2-abs(D)^2;
C2=S22-D*conj(S11);
B2=1+abs(S22)^2-abs(S11)^2-abs(D)^2;
GammaS1=(B1+sqrt(B1^2-4*C1*conj(C1)))/(2*C1); %1,2283
GammaS2=(B1-sqrt(B1^2-4*C1*conj(C1)))/(2*C1); %0,8141
GammaL1=(B2+sqrt(B2^2-4*C2*conj(C2)))/(2*C2); %1,4209
GammaL2=(B2-sqrt(B2^2-4*C2*conj(C2)))/(2*C2); %0,7038
modS1=abs(GammaS1);
modS2=abs(GammaS2);
modL1=abs(GammaL1);
modL2=abs(GammaL2);
phaseS=angle(GammaS1); % -161.7°
phaseL=angle(GammaL1); % 44,4°

%le coef de reflexion doit <1 

%%Partie2
gamma_S= 0.8141*exp(1i*(-161.7/180)*pi);
gamma_L= 0.7038*exp(1i*(44.4/180)*pi);
z1=0.11+0.16i;
Z0=50;
Z1=z1*Z0;
z2=1.05-2i;
Z2=z2*Z0;
%l1=0.19 lambda;
%L1=0.023 lambda;
%l2=0.324 lambda;
%L2=0.126 lambda;
