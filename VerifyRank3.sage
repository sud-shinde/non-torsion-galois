#the file rank3data.sage contains the Weierstrass coefficients of 37334 elliptic curves of rank 3. 
#The function Process takes the argument l in range(37334) and verifies that the l'th curve in rank3data.sage is indeed on the subfamily from Theorem 5.2

ff = open("rank3data.sage",'r')
lns = ff.readlines()
ff.close()
lns = [line[:-1] for line in lns]


def FindKT(a1, b1, m1, n1):
    var('k, t')
    Akt = k*(2*t-k*m1)+n1-m1^2
    Bkt = t^2-k^2*n1-m1*n1
    soln = solve([Akt == a1, Bkt == b1], [k,t])
    return soln

def FindTau(k,t,m,n,theta):
    var('tau')
    TTau = (k^2*m*theta + k^2*n + m^2*theta - theta^3 + m*n + tau^2 - n*theta)/(2*k*theta + 2*tau)
    soln = solve([TTau == t],[tau])
    return soln

def Process(l):
    E = EllipticCurve(eval(lns[l]))
    E1 = E.short_weierstrass_model()
    a1, b1 = E1.ainvs()[3:]
    gns = E.gens()
    MP = E.isomorphism_to(E1)
    thts1 = [MP(g)[0] for g in gns]
    thts = [thts1[0],thts1[1]]
    m1 = -(sum(thts))
    n1 = prod(thts)
    soln = FindKT(a1, b1, m1, n1)
    kk = soln[0][0].right_hand_side()
    tt = soln[0][1].right_hand_side()
    soln1 = FindTau(kk,tt,m1,n1,thts1[-1])
    #print(soln)
    for s in soln:
        assert s[0].right_hand_side() in QQ and s[1].right_hand_side() in QQ
    return True


