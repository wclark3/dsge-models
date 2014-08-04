function [residual, g1, g2] = dsf_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                    columns: equations in order of declaration
%                                                    rows: variables in declaration order
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: equations in order of declaration
%                                                       rows: variables in declaration order
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 39, 1);

%
% Model equations
%

ACx__ = y(14)*params(42)/2*(y(11)/y(14)-params(17)-params(25))^2;
ACn__ = y(13)*params(41)/2*(y(10)/y(13)-params(16)-params(25))^2;
abcap__ = (params(76)*(params(25)+params(18))+(1+y(12)/y(38)-params(18)-params(25))^params(47)*(y(12)-params(76)*(params(25)+params(18))))/y(12);
compn__ = (1-params(56)-params(55))*y(20)^(-params(21))/(params(55)*y(23)^(1-params(21))+params(56)*y(22)^(1-params(21))+(1-params(56)-params(55))*y(20)^(1-params(21)));
DD__ = y(12)*y(21)*abcap__+(1+y(28))*y(3)/(1+params(25))-y(3)+params(38)*(1+y(31))*y(4)/(1+params(25))-params(38)*y(4)+y(18)*(1+y(27))*y(1)/(1+params(25))-y(18)*y(1)+params(70)-(y(5)+y(6))*params(31)-(y(8)+y(17))-y(39)*params(39);
DDo__ = params(70)+params(14)*(y(28)-params(25))/(1+params(25))+params(15)*params(38)*(params(58)+params(43)-params(25))/(1+params(25))+(params(57)-params(25))*params(12)/(1+params(25))+params(76)*(params(25)+params(18))*params(46)-params(31)*(params(20)+params(19))-(params(29)+params(44))-params(39)*params(75);
h_target__ = params(31)+y(7)*(1-params(32))/(y(5)+y(6));
T_target__ = params(70)-y(7)*params(32);
uazuaz__ = params(74)/y(37);
uaz_b__ = y(18)*params(74)/y(37);
uaz__ = params(74)*y(21)/params(46)/y(37);
int_repayment__ = x(37)+x(38);
T10 = params(42)/2;
T22 = params(41)/2;
T42 = (1+y(12)/y(38)-params(18)-params(25))^params(47);
T55 = (1-params(56)-params(55))*y(20)^(-params(21));
T63 = params(55)*y(23)^(1-params(21))+params(56)*y(22)^(1-params(21));
T66 = T63+(1-params(56)-params(55))*y(20)^(1-params(21));
T201 = params(4)*(y(26)/params(51))^params(65);
T204 = T201*y(39)^params(49);
T208 = y(14)^(params(73)+params(8));
T212 = y(16)^(1-params(8));
T220 = params(2)*(y(25)/params(50))^params(64);
T223 = T220*y(39)^params(48);
T227 = y(13)^(params(72)+params(7));
T231 = y(15)^(1-params(7));
T247 = T63+y(20)^(1-params(21))*(1-params(55)-params(56));
T261 = params(42)*(y(11)/y(14)-params(17)-params(25));
T272 = T10*(y(11)/y(14)-params(17)-params(25))^2;
T275 = params(41)*(y(10)/y(13)-params(16)-params(25));
T286 = T22*(y(10)/y(13)-params(16)-params(25))^2;
T404 = exp(params(23)*(y(3)/y(37)+params(38)*y(4)/y(37)-params(14)/params(74)-params(38)*params(15)/params(74)));
T420 = y(3)/(1+params(25));
T583 = 1/y(13)*2*(y(10)/y(13)-params(16)-params(25));
T600 = 1/y(14)*2*(y(11)/y(14)-params(17)-params(25));
T611 = getPowerDeriv(1+y(12)/y(38)-params(18)-params(25),params(47),1);
T618 = (y(12)*(T42+(y(12)-params(76)*(params(25)+params(18)))*1/y(38)*T611)-(params(76)*(params(25)+params(18))+T42*(y(12)-params(76)*(params(25)+params(18)))))/(y(12)*y(12));
T639 = 2*(y(10)/y(13)-params(16)-params(25))*(-y(10))/(y(13)*y(13));
T664 = 2*(y(11)/y(14)-params(17)-params(25))*(-y(11))/(y(14)*y(14));
T719 = getPowerDeriv(T247,1/(1-params(21)),1);
T815 = (-(params(3)/(1+params(3))/(1+y(9))));
T836 = (-params(74))/(y(37)*y(37));
T851 = (-(y(18)*params(74)))/(y(37)*y(37));
T893 = (y(12)-params(76)*(params(25)+params(18)))*T611*(-y(12))/(y(38)*y(38))/y(12);
lhs =y(26);
rhs =T204*T208*T212;
residual(1)= lhs-rhs;
lhs =y(25);
rhs =T223*T227*T231;
residual(2)= lhs-rhs;
lhs =y(19);
rhs =y(24)+y(20)*params(1);
residual(3)= lhs-rhs;
lhs =y(21);
rhs =y(24)+y(20)*params(5);
residual(4)= lhs-rhs;
lhs =y(18);
rhs =T247^(1/(1-params(21)));
residual(5)= lhs-rhs;
lhs =1;
rhs =(1+y(27))*params(11)*(1+y(9))/((1+params(25))*(1+y(9)));
residual(6)= lhs-rhs;
lhs =(1+y(27))*(1+T261);
rhs =y(33)/y(19)+1-params(17)+T261*(1+y(11)/y(14)-params(17))-T272;
residual(7)= lhs-rhs;
lhs =(1+y(27))*(1+T275);
rhs =y(32)/y(19)+1-params(16)+T275*(1+y(10)/y(13)-params(16))-T286;
residual(8)= lhs-rhs;
lhs =1+y(30);
rhs =y(18)*(1+y(27))*(1-params(22)*(y(2)-params(13)))/y(18);
residual(9)= lhs-rhs;
lhs =y(14)*(1+params(25));
rhs =y(11)+y(14)*(1-params(17));
residual(10)= lhs-rhs;
lhs =y(13)*(1+params(25));
rhs =y(10)+y(13)*(1-params(16));
residual(11)= lhs-rhs;
lhs =y(38)*(1+params(25));
rhs =y(12)+y(38)*(1-params(18));
residual(12)= lhs-rhs;
lhs =y(39);
rhs =params(76)*params(60)+params(59)*(y(38)-params(76));
residual(13)= lhs-rhs;
lhs =y(25)*y(20)*(1-params(7))/y(15);
rhs =y(36);
residual(14)= lhs-rhs;
lhs =y(26)*y(22)*(1-params(8))/y(16);
rhs =y(36);
residual(15)= lhs-rhs;
lhs =y(25)*y(20)*params(7)/y(13);
rhs =y(32);
residual(16)= lhs-rhs;
lhs =y(26)*y(22)*params(8)/y(14);
rhs =y(33);
residual(17)= lhs-rhs;
lhs =y(25);
rhs =(y(5)+y(6))*compn__+params(1)*(y(11)+y(10)+ACx__+ACn__)+y(12)*abcap__*params(5);
residual(18)= lhs-rhs;
lhs =y(16)+y(15);
rhs =(1+params(3))*params(37);
residual(19)= lhs-rhs;
lhs =y(2)+y(3)+params(38)*y(4);
rhs =params(38)*(1+y(31))*y(4)/(1+params(25))+(1+y(28))*y(3)/(1+params(25))+y(12)*y(21)*abcap__+y(5)+y(6)+y(19)*(y(11)+y(10)+ACx__+ACn__)+(1+y(30))*y(2)/(1+params(25))+params(22)/2*(y(2)-params(13))^2-y(20)*y(25)-y(22)*y(26)-(y(8)+y(17))-y(29);
residual(20)= lhs-rhs;
lhs =y(6);
rhs =(params(37)*y(36)*params(3)+params(3)/(1+params(3))*(y(35)+y(29)))/(1+y(9));
residual(21)= lhs-rhs;
lhs =y(34);
rhs =(y(25)*y(20)*params(48)+y(26)*y(22)*params(49))/(y(21)*y(39));
residual(22)= lhs-rhs;
lhs =y(31);
rhs =params(58)+params(43)*T404;
residual(23)= lhs-rhs;
lhs =y(30);
rhs =y(31)+params(40);
residual(24)= lhs-rhs;
lhs =y(37);
rhs =y(20)*y(25)+y(22)*y(26);
residual(25)= lhs-rhs;
lhs =y(7);
rhs =DD__-DDo__;
residual(26)= lhs-rhs;
lhs =y(35);
rhs =T_target__;
residual(27)= lhs-rhs;
lhs =y(9);
rhs =h_target__;
residual(28)= lhs-rhs;
lhs =y(3);
rhs =params(25)*params(14)/(1+params(25))+T420+x(4)/uazuaz__+x(5)/uazuaz__+x(6)/uazuaz__;
residual(29)= lhs-rhs;
lhs =y(1);
rhs =params(25)*params(12)/(1+params(25))+y(1)/(1+params(25))+x(10)/uaz_b__+x(11)/uaz_b__+x(12)/uaz_b__;
residual(30)= lhs-rhs;
lhs =y(4);
rhs =params(25)*params(15)/(1+params(25))+y(4)/(1+params(25))+x(7)/uazuaz__+x(8)/uazuaz__+x(9)/uazuaz__;
residual(31)= lhs-rhs;
lhs =y(12)*uaz__;
rhs =params(76)*(params(25)+params(18))+x(1)+x(2)+x(3);
residual(32)= lhs-rhs;
lhs =y(8)*uazuaz__;
rhs =params(29)+x(13)+x(14)+x(15);
residual(33)= lhs-rhs;
lhs =y(17)*uazuaz__;
rhs =params(44)+x(16)+x(17)+x(18);
residual(34)= lhs-rhs;
lhs =y(29)*uazuaz__;
rhs =params(54)+x(19)+x(20)+x(21);
residual(35)= lhs-rhs;
lhs =y(28)*y(3)/(1+params(25));
rhs =int_repayment__/uazuaz__;
residual(36)= lhs-rhs;
lhs =y(22);
rhs =1+x(28)+x(29)+x(30);
residual(37)= lhs-rhs;
lhs =y(23);
rhs =1+x(31)+x(32)+x(33);
residual(38)= lhs-rhs;
lhs =y(24);
rhs =1+x(34)+x(35)+x(36);
residual(39)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(39, 39);

  %
  % Jacobian matrix
  %

  g1(1,14)=(-(T212*T204*getPowerDeriv(y(14),params(73)+params(8),1)));
  g1(1,16)=(-(T204*T208*getPowerDeriv(y(16),1-params(8),1)));
  g1(1,26)=1-T212*T208*y(39)^params(49)*params(4)*1/params(51)*getPowerDeriv(y(26)/params(51),params(65),1);
  g1(1,39)=(-(T212*T208*T201*getPowerDeriv(y(39),params(49),1)));
  g1(2,13)=(-(T231*T223*getPowerDeriv(y(13),params(72)+params(7),1)));
  g1(2,15)=(-(T223*T227*getPowerDeriv(y(15),1-params(7),1)));
  g1(2,25)=1-T231*T227*y(39)^params(48)*params(2)*1/params(50)*getPowerDeriv(y(25)/params(50),params(64),1);
  g1(2,39)=(-(T231*T227*T220*getPowerDeriv(y(39),params(48),1)));
  g1(3,19)=1;
  g1(3,20)=(-params(1));
  g1(3,24)=(-1);
  g1(4,20)=(-params(5));
  g1(4,21)=1;
  g1(4,24)=(-1);
  g1(5,18)=1;
  g1(5,20)=(-((1-params(55)-params(56))*getPowerDeriv(y(20),1-params(21),1)*T719));
  g1(5,22)=(-(T719*params(56)*getPowerDeriv(y(22),1-params(21),1)));
  g1(5,23)=(-(T719*params(55)*getPowerDeriv(y(23),1-params(21),1)));
  g1(6,9)=(-(((1+params(25))*(1+y(9))*(1+y(27))*params(11)-(1+params(25))*(1+y(27))*params(11)*(1+y(9)))/((1+params(25))*(1+y(9))*(1+params(25))*(1+y(9)))));
  g1(6,27)=(-(params(11)*(1+y(9))/((1+params(25))*(1+y(9)))));
  g1(7,11)=(1+y(27))*params(42)*1/y(14)-((1+y(11)/y(14)-params(17))*params(42)*1/y(14)+T261*1/y(14)-T10*T600);
  g1(7,14)=(1+y(27))*params(42)*(-y(11))/(y(14)*y(14))-((1+y(11)/y(14)-params(17))*params(42)*(-y(11))/(y(14)*y(14))+T261*(-y(11))/(y(14)*y(14))-T10*T664);
  g1(7,19)=(-((-y(33))/(y(19)*y(19))));
  g1(7,27)=1+T261;
  g1(7,33)=(-(1/y(19)));
  g1(8,10)=(1+y(27))*params(41)*1/y(13)-((1+y(10)/y(13)-params(16))*params(41)*1/y(13)+T275*1/y(13)-T22*T583);
  g1(8,13)=(1+y(27))*params(41)*(-y(10))/(y(13)*y(13))-((1+y(10)/y(13)-params(16))*params(41)*(-y(10))/(y(13)*y(13))+T275*(-y(10))/(y(13)*y(13))-T22*T639);
  g1(8,19)=(-((-y(32))/(y(19)*y(19))));
  g1(8,27)=1+T275;
  g1(8,32)=(-(1/y(19)));
  g1(9,2)=(-(y(18)*(1+y(27))*(-params(22))/y(18)));
  g1(9,27)=(-(y(18)*(1-params(22)*(y(2)-params(13)))/y(18)));
  g1(9,30)=1;
  g1(10,11)=(-1);
  g1(10,14)=1+params(25)-(1-params(17));
  g1(11,10)=(-1);
  g1(11,13)=1+params(25)-(1-params(16));
  g1(12,12)=(-1);
  g1(12,38)=1+params(25)-(1-params(18));
  g1(13,38)=(-params(59));
  g1(13,39)=1;
  g1(14,15)=(-(y(25)*y(20)*(1-params(7))))/(y(15)*y(15));
  g1(14,20)=y(25)*(1-params(7))/y(15);
  g1(14,25)=y(20)*(1-params(7))/y(15);
  g1(14,36)=(-1);
  g1(15,16)=(-(y(26)*y(22)*(1-params(8))))/(y(16)*y(16));
  g1(15,22)=y(26)*(1-params(8))/y(16);
  g1(15,26)=y(22)*(1-params(8))/y(16);
  g1(15,36)=(-1);
  g1(16,13)=(-(y(25)*y(20)*params(7)))/(y(13)*y(13));
  g1(16,20)=y(25)*params(7)/y(13);
  g1(16,25)=y(20)*params(7)/y(13);
  g1(16,32)=(-1);
  g1(17,14)=(-(y(26)*y(22)*params(8)))/(y(14)*y(14));
  g1(17,22)=y(26)*params(8)/y(14);
  g1(17,26)=y(22)*params(8)/y(14);
  g1(17,33)=(-1);
  g1(18,5)=(-compn__);
  g1(18,6)=(-compn__);
  g1(18,10)=(-(params(1)*(1+y(13)*T22*T583)));
  g1(18,11)=(-(params(1)*(1+y(14)*T10*T600)));
  g1(18,12)=(-(abcap__*params(5)+y(12)*params(5)*T618));
  g1(18,13)=(-(params(1)*(T286+y(13)*T22*T639)));
  g1(18,14)=(-(params(1)*(T272+y(14)*T10*T664)));
  g1(18,20)=(-((y(5)+y(6))*(T66*(1-params(56)-params(55))*getPowerDeriv(y(20),(-params(21)),1)-T55*(1-params(56)-params(55))*getPowerDeriv(y(20),1-params(21),1))/(T66*T66)));
  g1(18,22)=(-((y(5)+y(6))*(-(T55*params(56)*getPowerDeriv(y(22),1-params(21),1)))/(T66*T66)));
  g1(18,23)=(-((y(5)+y(6))*(-(T55*params(55)*getPowerDeriv(y(23),1-params(21),1)))/(T66*T66)));
  g1(18,25)=1;
  g1(18,38)=(-(y(12)*params(5)*T893));
  g1(19,15)=1;
  g1(19,16)=1;
  g1(20,2)=1-((1+y(30))/(1+params(25))+params(22)/2*2*(y(2)-params(13)));
  g1(20,3)=1-(1+y(28))/(1+params(25));
  g1(20,4)=params(38)-params(38)*(1+y(31))/(1+params(25));
  g1(20,5)=(-1);
  g1(20,6)=(-1);
  g1(20,8)=1;
  g1(20,10)=(-(y(19)*(1+y(13)*T22*T583)));
  g1(20,11)=(-(y(19)*(1+y(14)*T10*T600)));
  g1(20,12)=(-(y(21)*abcap__+y(12)*y(21)*T618));
  g1(20,13)=(-(y(19)*(T286+y(13)*T22*T639)));
  g1(20,14)=(-(y(19)*(T272+y(14)*T10*T664)));
  g1(20,17)=1;
  g1(20,19)=(-(y(11)+y(10)+ACx__+ACn__));
  g1(20,20)=y(25);
  g1(20,21)=(-(y(12)*abcap__));
  g1(20,22)=y(26);
  g1(20,25)=y(20);
  g1(20,26)=y(22);
  g1(20,28)=(-T420);
  g1(20,29)=1;
  g1(20,30)=(-(y(2)/(1+params(25))));
  g1(20,31)=(-(params(38)*y(4)/(1+params(25))));
  g1(20,38)=(-(y(12)*y(21)*T893));
  g1(21,6)=1;
  g1(21,9)=(-((-(params(37)*y(36)*params(3)+params(3)/(1+params(3))*(y(35)+y(29))))/((1+y(9))*(1+y(9)))));
  g1(21,29)=T815;
  g1(21,35)=T815;
  g1(21,36)=(-(params(3)*params(37)/(1+y(9))));
  g1(22,20)=(-(y(25)*params(48)/(y(21)*y(39))));
  g1(22,21)=(-((-(y(39)*(y(25)*y(20)*params(48)+y(26)*y(22)*params(49))))/(y(21)*y(39)*y(21)*y(39))));
  g1(22,22)=(-(y(26)*params(49)/(y(21)*y(39))));
  g1(22,25)=(-(y(20)*params(48)/(y(21)*y(39))));
  g1(22,26)=(-(y(22)*params(49)/(y(21)*y(39))));
  g1(22,34)=1;
  g1(22,39)=(-((-(y(21)*(y(25)*y(20)*params(48)+y(26)*y(22)*params(49))))/(y(21)*y(39)*y(21)*y(39))));
  g1(23,3)=(-(params(43)*T404*params(23)*1/y(37)));
  g1(23,4)=(-(params(43)*T404*params(23)*params(38)/y(37)));
  g1(23,31)=1;
  g1(23,37)=(-(params(43)*T404*params(23)*((-y(3))/(y(37)*y(37))+(-(params(38)*y(4)))/(y(37)*y(37)))));
  g1(24,30)=1;
  g1(24,31)=(-1);
  g1(25,20)=(-y(25));
  g1(25,22)=(-y(26));
  g1(25,25)=(-y(20));
  g1(25,26)=(-y(22));
  g1(25,37)=1;
  g1(26,1)=(-(y(18)*(1+y(27))/(1+params(25))-y(18)));
  g1(26,3)=(-((1+y(28))/(1+params(25))-1));
  g1(26,4)=(-(params(38)*(1+y(31))/(1+params(25))-params(38)));
  g1(26,5)=params(31);
  g1(26,6)=params(31);
  g1(26,7)=1;
  g1(26,8)=1;
  g1(26,12)=(-(y(21)*abcap__+y(12)*y(21)*T618));
  g1(26,17)=1;
  g1(26,18)=(-((1+y(27))*y(1)/(1+params(25))-y(1)));
  g1(26,21)=(-(y(12)*abcap__));
  g1(26,27)=(-(y(18)*y(1)/(1+params(25))));
  g1(26,28)=(-(T420-params(14)/(1+params(25))));
  g1(26,31)=(-(params(38)*y(4)/(1+params(25))));
  g1(26,38)=(-(y(12)*y(21)*T893));
  g1(26,39)=params(39);
  g1(27,7)=params(32);
  g1(27,35)=1;
  g1(28,5)=(-((-(y(7)*(1-params(32))))/((y(5)+y(6))*(y(5)+y(6)))));
  g1(28,6)=(-((-(y(7)*(1-params(32))))/((y(5)+y(6))*(y(5)+y(6)))));
  g1(28,7)=(-((1-params(32))/(y(5)+y(6))));
  g1(28,9)=1;
  g1(29,3)=1-1/(1+params(25));
  g1(29,37)=(-((-(x(4)*T836))/(uazuaz__*uazuaz__)+(-(x(5)*T836))/(uazuaz__*uazuaz__)+(-(x(6)*T836))/(uazuaz__*uazuaz__)));
  g1(30,1)=1-1/(1+params(25));
  g1(30,18)=(-((-(params(74)/y(37)*x(10)))/(uaz_b__*uaz_b__)+(-(params(74)/y(37)*x(11)))/(uaz_b__*uaz_b__)+(-(params(74)/y(37)*x(12)))/(uaz_b__*uaz_b__)));
  g1(30,37)=(-((-(x(10)*T851))/(uaz_b__*uaz_b__)+(-(x(11)*T851))/(uaz_b__*uaz_b__)+(-(x(12)*T851))/(uaz_b__*uaz_b__)));
  g1(31,4)=1-1/(1+params(25));
  g1(31,37)=(-((-(x(7)*T836))/(uazuaz__*uazuaz__)+(-(x(8)*T836))/(uazuaz__*uazuaz__)+(-(x(9)*T836))/(uazuaz__*uazuaz__)));
  g1(32,12)=uaz__;
  g1(32,21)=y(12)*params(74)*1/params(46)/y(37);
  g1(32,37)=y(12)*(-(params(74)*y(21)/params(46)))/(y(37)*y(37));
  g1(33,8)=uazuaz__;
  g1(33,37)=y(8)*T836;
  g1(34,17)=uazuaz__;
  g1(34,37)=y(17)*T836;
  g1(35,29)=uazuaz__;
  g1(35,37)=y(29)*T836;
  g1(36,3)=y(28)/(1+params(25));
  g1(36,28)=T420;
  g1(36,37)=(-((-(int_repayment__*T836))/(uazuaz__*uazuaz__)));
  g1(37,22)=1;
  g1(38,23)=1;
  g1(39,24)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],39,1521);
end
end
