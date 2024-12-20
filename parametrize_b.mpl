E := y^2 + (-x^3 - a*x - b):
P := x^2 + m*x + n:
RS := resultant(E, P, x): ##The resultant polynomial
DiscRS := factors(discrim(RS, y)):
##The folloiwng is the squarefree factor of the discriminant DiscRS
ToBeSquared := a*m^2*n - b*m^3 + a^2*n - a*b*m - 2*a*n^2 + 3*b*m*n + n^3 + b^2:
ToParametrize := x^2 - ToBeSquared:
with(algcurves):
pp := parametrization(ToParametrize, x, b, t):
pp[2]; ##PP[2] is precisely the parametrization given in Equation 4.1. This forces DiscRS to be a perfect square and thereby ensures the Galois image of Gal(Q(E[f])/Q) is in G_6.
