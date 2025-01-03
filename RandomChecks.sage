var('a,b,m,n')

FF = 8*b*n^3 + 12*m*n^4 - 10*m^3*n^3 + 2*m^5*n^2 + (6*m^6 + 12*a*m^4 + 14*m^5 - 36*m^4*n + 6*a^2*m^2 + 14*a*m^3 - 44*a*m^2*n - 16*b*m^3 + m^4 - 38*m^3*n + 54*m^2*n^2 - 8*a^2*n - 16*a*b*m + 4*a*m*n + 16*a*n^2 - 28*b*m^2 + 48*b*m*n + 12*m^2*n - 12*m*n^2 - 8*n^3 + 16*b^2 - 8*b*n + 6*n^2)*x^4 + (4*m^3 + 4*a*m + 6*m^2 - 12*m*n - 8*b + 4*n)*x^6 + (4*m^9 + 12*a*m^7 + 10*m^8 - 36*m^7*n + 12*a^2*m^5 + 20*a*m^6 - 88*a*m^5*n - 8*b*m^6 + 2*m^7 - 64*m^6*n + 108*m^5*n^2 + 4*a^3*m^3 + 10*a^2*m^4 - 68*a^2*m^3*n - 16*a*b*m^4 + 2*a*m^5 - 92*a*m^4*n + 188*a*m^3*n^2 - 16*b*m^5 + 48*b*m^4*n + 2*m^5*n + 114*m^4*n^2 - 124*m^3*n^3 - 16*a^3*m*n - 8*a^2*b*m^2 - 28*a^2*m^2*n + 80*a^2*m*n^2 - 16*a*b*m^3 + 80*a*b*m^2*n + 8*a*m^3*n + 120*a*m^2*n^2 - 112*a*m*n^3 - 4*b*m^4 + 16*b*m^3*n - 72*b*m^2*n^2 - 28*m^3*n^2 - 60*m^2*n^3 + 48*m*n^4 + 32*a^2*b*n + 48*a^2*n^2 - 32*a*b*m*n - 64*a*b*n^2 - 4*a*m*n^2 - 96*a*n^3 + 16*b^2*m^2 - 16*b*m^2*n + 96*b*m*n^2 + 32*b*n^3 + 6*m^2*n^2 + 12*m*n^3 + 48*n^4 + 32*b^2*n + 8*b*n^2 + 4*n^3)*x^2 + 24*a^2*b*m^2*n + 56*a*b*m^4*n - 16*a*b*m*n^2 - 112*a*b*m^2*n^2 + 172*a*m^6*n^2 - 56*a*m^7*n - 60*a^2*m^6*n - 44*a*m^8*n + 112*a*m*n^4 - 76*a*m^2*n^3 - 80*a^2*m*n^3 + 22*a^2*m^2*n^2 + 16*a^3*m*n^2 - 84*b*m^4*n^2 + 224*a*m^2*n^4 - 244*a*m^3*n^3 + 60*a*m^4*n^2 - 240*a^2*m^2*n^3 + 108*a^2*m^3*n^2 - 8*a^2*m^4*n - 4*a^2*b*m^4 + 96*a^3*m^2*n^2 - 12*a^3*m^3*n - 8*a^4*m^2*n + 32*b*m^6*n - 292*a*m^4*n^3 + 182*a*m^5*n^2 - 18*a*m^6*n - 8*a*b*m^6 + 198*a^2*m^4*n^2 - 46*a^2*m^5*n - 36*a^3*m^4*n + 16*n^6 + x^8 + 2*m^11 + m^12 + 16*b^2*n^2 - 32*b*n^4 + 16*a*n^4 - 8*a^2*n^3 - 48*m*n^5 + 70*m^2*n^4 - 64*a*n^5 + 96*a^2*n^4 - 64*a^3*n^3 + 16*a^4*n^2 - 8*n^5 - 72*m^2*n^5 + 148*m^3*n^4 - 76*m^4*n^3 + 4*m*x^7 + 129*m^4*n^4 - 170*m^5*n^3 + 39*m^6*n^2 + a^2*m^6 + 2*a^3*m^5 + a^4*m^4 - 116*m^6*n^3 + 90*m^7*n^2 - 10*m^8*n - 4*b*m^8 + 2*a*m^8 + 6*a^2*m^7 + 4*a^3*m^6 + 54*m^8*n^2 - 22*m^9*n + 6*a*m^9 + m^10 + 48*b*m*n^3 + 6*a^2*m^8 - 12*m^10*n + 4*a*m^10 + 64*a*b*n^3 - 32*a^2*b*n^2 + 88*b*m^2*n^3 - 16*b*m^3*n^2 + 4*m*(3*m^3 + 3*a*m + m^2 - 9*m*n - 6*b + 3*n)*x^5 + 4*m*(3*m^6 + 6*a*m^4 + 2*m^5 - 18*m^4*n + 3*a^2*m^2 + 2*a*m^3 - 22*a*m^2*n - 8*b*m^3 - 4*m^3*n + 27*m^2*n^2 - 4*a^2*n - 8*a*b*m + 2*a*m*n + 8*a*n^2 - 4*b*m^2 + 24*b*m*n + m^2*n - 6*m*n^2 - 4*n^3 + 8*b^2 - 4*b*n + 3*n^2)*x^3 + 4*m*(m^9 + 3*a*m^7 + m^8 - 9*m^7*n + 3*a^2*m^5 + 2*a*m^6 - 22*a*m^5*n - 2*b*m^6 - 7*m^6*n + 27*m^5*n^2 + a^3*m^3 + a^2*m^4 - 17*a^2*m^3*n - 4*a*b*m^4 - 12*a*m^4*n + 47*a*m^3*n^2 + 12*b*m^4*n + m^5*n + 15*m^4*n^2 - 31*m^3*n^3 - 4*a^3*m*n - 2*a^2*b*m^2 - 5*a^2*m^2*n + 20*a^2*m*n^2 + 20*a*b*m^2*n + a*m^3*n + 26*a*m^2*n^2 - 28*a*m*n^3 - 8*b*m^3*n - 18*b*m^2*n^2 - 4*m^3*n^2 - 13*m^2*n^3 + 12*m*n^4 + 8*a^2*b*n + 12*a^2*n^2 - 8*a*b*m*n - 16*a*b*n^2 - a*m*n^2 - 24*a*n^3 - 2*b*m^2*n + 24*b*m*n^2 + 8*b*n^3 + 3*m*n^3 + 12*n^4 + 8*b^2*n + 2*b*n^2 + n^3)*x + n^4 - 4*a*m*n^3 - 4*b*m^2*n^2 + 2*a*m^3*n^2


RES = x^4 + (m^3 + a*m - 3*m*n - 2*b)*x^2 + a*m^2*n - b*m^3 + a^2*n - a*b*m - 2*a*n^2 + 3*b*m*n + n^3 + b^2

def fact_pat(tp):
    ll = list(factor(tp))
    return [(f[0].degree(), f[1]) for f in ll]

class MaxExt:
    def __init__(self, aa,bb,mm,nn):
        try:
            E = EllipticCurve([aa,bb])
        except:
            raise Exception("Unable to define the elliptic curve, may be singular?")
        if mm^2-4*nn==0:
            raise Exception("mm^2-4*nn should be different than zero!")
        poly = x**2+mm*x+nn
        poly = poly.polynomial(QQ)
        self.curve = E
        self.poly = poly
        self.div2 = E.division_polynomial(2)/4
        self.deg = poly.degree()
        self.ff = FF(a=aa,b=bb,m=mm,n=nn).polynomial(QQ)
        self.res = RES(a=aa,b=bb,m=mm,n=nn).polynomial(QQ)
        self.K = self.ff.splitting_field('aa')
        self.gcurve = self.curve.change_ring(self.K)
        self.rts = self.poly.change_ring(self.K).roots()
        self.Y2s = [self.div2(r[0]) for r in self.rts]
        self.are_sqs = [r.is_square() for r in self.Y2s]
        assert sum(self.are_sqs) == 2
        self.ys = [r.sqrt() for r in self.Y2s]
        ##The line below is not scalable
        pts = [(self.rts[0][0], self.ys[0], 1), (self.rts[1][0], self.ys[1], 1)]
        self.pts = [self.curve.change_ring(self.K).point(pt) for pt in pts]
        self.factpat = fact_pat(self.res)
        self.pol_factpat = fact_pat(self.poly)



def CaseG8():
    a1 = randint(-50,50)
    b1 = randint(-50,50)
    m1 = randint(-50,50)
    n1 = randint(-50,50)
    mm = MaxExt(a1,b1,m1,n1)
    print("Testing for", (a1,b1,m1,n1))
    print(mm.K.degree()) ##should be 8
    print(mm.factpat, mm.pol_factpat)
    return None

def CaseG6():
    var('t')
    a1 = randint(-50,50)
    m1 = randint(-50,50)
    n1 = randint(-50,50)
    tn = randint(-50,50)
    td = randint(-50,50)
    t1 = QQ(tn/td)
    Bt = (a*m^2*n + a^2*n - 2*a*n^2 + n^3 - t^2)/(m^3 + a*m - 3*m*n - 2*t)
    b1 = QQ(Bt(a=a1,m=m1,n=n1,t=t1))
    print("Testing for", (a1,b1,m1,n1,t1))
    mm = MaxExt(a1,b1,m1,n1)
    print(mm.K.degree()) ##should be 4
    print(mm.factpat, mm.pol_factpat)
    return None

def CaseG4():
    var('t,k')
    m1 = randint(-50,50)
    n1 = randint(-50,50)
    tn = randint(-50,50)
    td = randint(-50,50)
    t1 = QQ(tn/td)
    kn = randint(-50,50)
    kd = randint(-50,50)
    k1 = QQ(tn/td)
    Akt = k*(-k*m + 2*t) + n - m^2 
    Bkt = -k^2*n - m*n + t^2
    a1 = QQ(Akt(m=m1,n=n1,t=t1,k=k1))
    b1 = QQ(Bkt(m=m1,n=n1,t=t1,k=k1))
    print("Testing for", (a1,b1,m1,n1,k1,t1))
    mm = MaxExt(a1,b1,m1,n1)
    print(mm.K.degree()) ##should be 2
    print(mm.factpat, mm.pol_factpat)
    return None

def CaseG5():
    a1 = randint(-50,50)
    b1 = randint(-50,50)
    m1 = randint(-50,50)
    d1 = randint(-50,50)
    n1 = (m1^2-d1^2)/4
    mm = MaxExt(a1,b1,m1,n1)
    print("Testing for", (a1,b1,m1,n1,d1))
    print(mm.K.degree()) ##should be 4
    print(mm.factpat, mm.pol_factpat)
    return None


def CaseG2():
    var('t')
    a1 = randint(-50,50)
    m1 = randint(-50,50)
    d1 = randint(-50,50)
    n1 = (m1^2-d1^2)/4
    tn = randint(-50,50)
    td = randint(-50,50)
    t1 = QQ(tn/td)
    Bt = (a*m^2*n + a^2*n - 2*a*n^2 + n^3 - t^2)/(m^3 + a*m - 3*m*n - 2*t)
    b1 = QQ(Bt(a=a1,m=m1,n=n1,t=t1))
    print("Testing for", (a1,b1,m1,n1,t1))
    mm = MaxExt(a1,b1,m1,n1)
    print(mm.K.degree()) ##should be 2
    print(mm.factpat, mm.pol_factpat)
    return None

def CaseG1():
    var('t,k')
    m1 = randint(-50,50)
    d1 = randint(-50,50)
    n1 = (m1^2-d1^2)/4
    tn = randint(-50,50)
    td = randint(-50,50)
    t1 = QQ(tn/td)
    kn = randint(-50,50)
    kd = randint(-50,50)
    k1 = QQ(tn/td)
    Akt = k*(-k*m + 2*t) + n - m^2
    Bkt = -k^2*n - m*n + t^2
    a1 = QQ(Akt(m=m1,n=n1,t=t1,k=k1))
    b1 = QQ(Bkt(m=m1,n=n1,t=t1,k=k1))
    print("Testing for", (a1,b1,m1,n1,k1,t1))
    mm = MaxExt(a1,b1,m1,n1)
    print(mm.K.degree()) ##should be 1
    print(mm.factpat, mm.pol_factpat)
    return None

def CaseG3():
    var('s,t')
    a1 = randint(-50,50)
    m1 = randint(-50,50)
    d1 = randint(-50,50)
    n1 = (m1^2-d1^2)/4
    sn = randint(-50,50)
    sd = randint(-50,50)
    s1 = QQ(sn/sd)
    Bt = 1/8*m^3 + 3/8*m^2*t + 3/8*m*t^2 + 1/8*t^3 + 1/2*a*m + 1/2*a*t + s^2
    b1 = QQ(Bt(a=a1,m=m1,n=n1,t=d1,s=s1))
    print("Testing for", (a1,b1,m1,n1,s1))
    mm = MaxExt(a1,b1,m1,n1)
    print(mm.K.degree()) ##should be 2
    print(mm.factpat, mm.pol_factpat)
    return None
