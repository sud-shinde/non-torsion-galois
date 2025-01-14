#the file rank2data.sage contains the Weierstrass coefficients of 493291 elliptic curves of rank 2. 
#The function Process takes the argument i in range(493291) and verifies that the i'th curve in rank2data.sage is indeed on the family from Theorem 5.1
ff = open("rank2data.sage",'r')
lns = ff.readlines()
ff.close()
lns = [line[:-1] for line in lns]


def FindKT(a1, b1, m1, n1):
    var('k, t')
    Akt = k*(2*t-k*m1)+n1-m1^2
    Bkt = t^2-k^2*n1-m1*n1
    soln = solve([Akt == a1, Bkt == b1], [k,t])
    return soln

def Process(l):
    E = EllipticCurve(eval(lns[l]))
    E1 = E.short_weierstrass_model()
    a1, b1 = E1.ainvs()[3:]
    gns = E.gens()
    MP = E.isomorphism_to(E1)
    thts = [MP(g)[0] for g in gns]
    m1 = -(sum(thts))
    n1 = prod(thts)
    soln = FindKT(a1, b1, m1, n1)
    #print(soln)
    con = True
    for s in soln:
        con = con and (s[0].right_hand_side() in QQ and s[1].right_hand_side() in QQ)
    return con

for l in range(len(lns)):
    assert Process(l)

