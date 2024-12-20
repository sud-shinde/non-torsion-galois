E := y^2 + (-x^3 - a*x - b):
P := x^2 + m*x + n:
alias(theta = RootOf(P, x)): #the second root would be -m-theta
rts := evala(Roots(f, theta)):
alias(mu = RootOf(eval(E, x = theta), y)):
#evala(AFactor(evala(Minpoly(mu, x)))):
alias(eta = RootOf(eval(E, x = -m - theta), y)):
FF := collect(evala(AFactor(evala(Minpoly(eta + theta + mu, x)))), x, factor):
degree(FF, x);

