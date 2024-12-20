n := (m^2 - delta^2)/4:
f := m*x + x^2 + n:
rts := [(-m - delta)/2, (delta - m)/2]:
P := x^3 + a*x + b:
factor(eval(P, x = rts[1])):
C1 := numer(y^2 - factor(eval(P, x = rts[1]))):
with(algcurves):
PBG3 := factor(parametrization(C1, y, b, s)):
collect(numer(PBG3[2]),m,factor);
denom(PBG3[2]);
