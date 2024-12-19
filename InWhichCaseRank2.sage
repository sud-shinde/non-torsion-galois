load NF_FF_Gens2.sage
ff = open("rank2data.sage",'r')
lns = ff.readlines()
ff.close()
lns = [line[:-1] for line in lns]

def Process(l):
    E = EllipticCurve(eval(lns[l]))
    E1 = E.short_weierstrass_model()
    a1, b1 = E1.ainvs()[3:]
    gns = E.gens()
    MP = E.isomorphism_to(E1)
    thts = [MP(g)[0] for g in gns]
    m1 = -(sum(thts))
    n1 = prod(thts)
    MEXT = MaxExt(a1,b1,m1,n1)
    assert MEXT.K.degree()==1
    #PTS = MEXT.pts
    #for p in PTS:
    #    p = p.change_ring(QQ)
    #    assert (p in gns) or (-1*p in gns)
    return True

def GiveCoeffs(l):
    E = EllipticCurve(eval(lns[l]))
    E1 = E.short_weierstrass_model()
    a1, b1 = E1.ainvs()[3:]
    gns = E.gens()
    MP = E.isomorphism_to(E1)
    thts = [MP(g)[0] for g in gns]
    m1 = -(sum(thts))
    n1 = prod(thts)
    return a1,b1,m1,n1

def FindKT(a1, b1, m1, n1):
    var('k, t')
    Akt = k*(2*t-k*m1)+n1-m1^2
    Bkt = t^2-k^2*n1-m1*n1
    soln = solve([Akt == a1, Bkt == b1], [k,t])
    return soln

def Process1(l):
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
    for s in soln:
        assert s[0].right_hand_side() in QQ and s[1].right_hand_side() in QQ
    return True


