var('a,b,m,n')

from sympy.combinatorics import Permutation
from itertools import product
cfs = [-1,0,1]
dn = 2
lst = list(product(cfs,repeat=dn))
lst = [l for l in lst if l.count(0)==dn-1]
BG = GL(dn,ZZ)

## FF is a symbolic defining polynomial of Q(E[f]) for a quadratic polynomial f.
FF = 8*b*n^3 + 12*m*n^4 - 10*m^3*n^3 + 2*m^5*n^2 + (6*m^6 + 12*a*m^4 + 14*m^5 - 36*m^4*n + 6*a^2*m^2 + 14*a*m^3 - 44*a*m^2*n - 16*b*m^3 + m^4 - 38*m^3*n + 54*m^2*n^2 - 8*a^2*n - 16*a*b*m + 4*a*m*n + 16*a*n^2 - 28*b*m^2 + 48*b*m*n + 12*m^2*n - 12*m*n^2 - 8*n^3 + 16*b^2 - 8*b*n + 6*n^2)*x^4 + (4*m^3 + 4*a*m + 6*m^2 - 12*m*n - 8*b + 4*n)*x^6 + (4*m^9 + 12*a*m^7 + 10*m^8 - 36*m^7*n + 12*a^2*m^5 + 20*a*m^6 - 88*a*m^5*n - 8*b*m^6 + 2*m^7 - 64*m^6*n + 108*m^5*n^2 + 4*a^3*m^3 + 10*a^2*m^4 - 68*a^2*m^3*n - 16*a*b*m^4 + 2*a*m^5 - 92*a*m^4*n + 188*a*m^3*n^2 - 16*b*m^5 + 48*b*m^4*n + 2*m^5*n + 114*m^4*n^2 - 124*m^3*n^3 - 16*a^3*m*n - 8*a^2*b*m^2 - 28*a^2*m^2*n + 80*a^2*m*n^2 - 16*a*b*m^3 + 80*a*b*m^2*n + 8*a*m^3*n + 120*a*m^2*n^2 - 112*a*m*n^3 - 4*b*m^4 + 16*b*m^3*n - 72*b*m^2*n^2 - 28*m^3*n^2 - 60*m^2*n^3 + 48*m*n^4 + 32*a^2*b*n + 48*a^2*n^2 - 32*a*b*m*n - 64*a*b*n^2 - 4*a*m*n^2 - 96*a*n^3 + 16*b^2*m^2 - 16*b*m^2*n + 96*b*m*n^2 + 32*b*n^3 + 6*m^2*n^2 + 12*m*n^3 + 48*n^4 + 32*b^2*n + 8*b*n^2 + 4*n^3)*x^2 + 24*a^2*b*m^2*n + 56*a*b*m^4*n - 16*a*b*m*n^2 - 112*a*b*m^2*n^2 + 172*a*m^6*n^2 - 56*a*m^7*n - 60*a^2*m^6*n - 44*a*m^8*n + 112*a*m*n^4 - 76*a*m^2*n^3 - 80*a^2*m*n^3 + 22*a^2*m^2*n^2 + 16*a^3*m*n^2 - 84*b*m^4*n^2 + 224*a*m^2*n^4 - 244*a*m^3*n^3 + 60*a*m^4*n^2 - 240*a^2*m^2*n^3 + 108*a^2*m^3*n^2 - 8*a^2*m^4*n - 4*a^2*b*m^4 + 96*a^3*m^2*n^2 - 12*a^3*m^3*n - 8*a^4*m^2*n + 32*b*m^6*n - 292*a*m^4*n^3 + 182*a*m^5*n^2 - 18*a*m^6*n - 8*a*b*m^6 + 198*a^2*m^4*n^2 - 46*a^2*m^5*n - 36*a^3*m^4*n + 16*n^6 + x^8 + 2*m^11 + m^12 + 16*b^2*n^2 - 32*b*n^4 + 16*a*n^4 - 8*a^2*n^3 - 48*m*n^5 + 70*m^2*n^4 - 64*a*n^5 + 96*a^2*n^4 - 64*a^3*n^3 + 16*a^4*n^2 - 8*n^5 - 72*m^2*n^5 + 148*m^3*n^4 - 76*m^4*n^3 + 4*m*x^7 + 129*m^4*n^4 - 170*m^5*n^3 + 39*m^6*n^2 + a^2*m^6 + 2*a^3*m^5 + a^4*m^4 - 116*m^6*n^3 + 90*m^7*n^2 - 10*m^8*n - 4*b*m^8 + 2*a*m^8 + 6*a^2*m^7 + 4*a^3*m^6 + 54*m^8*n^2 - 22*m^9*n + 6*a*m^9 + m^10 + 48*b*m*n^3 + 6*a^2*m^8 - 12*m^10*n + 4*a*m^10 + 64*a*b*n^3 - 32*a^2*b*n^2 + 88*b*m^2*n^3 - 16*b*m^3*n^2 + 4*m*(3*m^3 + 3*a*m + m^2 - 9*m*n - 6*b + 3*n)*x^5 + 4*m*(3*m^6 + 6*a*m^4 + 2*m^5 - 18*m^4*n + 3*a^2*m^2 + 2*a*m^3 - 22*a*m^2*n - 8*b*m^3 - 4*m^3*n + 27*m^2*n^2 - 4*a^2*n - 8*a*b*m + 2*a*m*n + 8*a*n^2 - 4*b*m^2 + 24*b*m*n + m^2*n - 6*m*n^2 - 4*n^3 + 8*b^2 - 4*b*n + 3*n^2)*x^3 + 4*m*(m^9 + 3*a*m^7 + m^8 - 9*m^7*n + 3*a^2*m^5 + 2*a*m^6 - 22*a*m^5*n - 2*b*m^6 - 7*m^6*n + 27*m^5*n^2 + a^3*m^3 + a^2*m^4 - 17*a^2*m^3*n - 4*a*b*m^4 - 12*a*m^4*n + 47*a*m^3*n^2 + 12*b*m^4*n + m^5*n + 15*m^4*n^2 - 31*m^3*n^3 - 4*a^3*m*n - 2*a^2*b*m^2 - 5*a^2*m^2*n + 20*a^2*m*n^2 + 20*a*b*m^2*n + a*m^3*n + 26*a*m^2*n^2 - 28*a*m*n^3 - 8*b*m^3*n - 18*b*m^2*n^2 - 4*m^3*n^2 - 13*m^2*n^3 + 12*m*n^4 + 8*a^2*b*n + 12*a^2*n^2 - 8*a*b*m*n - 16*a*b*n^2 - a*m*n^2 - 24*a*n^3 - 2*b*m^2*n + 24*b*m*n^2 + 8*b*n^3 + 3*m*n^3 + 12*n^4 + 8*b^2*n + 2*b*n^2 + n^3)*x + n^4 - 4*a*m*n^3 - 4*b*m^2*n^2 + 2*a*m^3*n^2


def matrep(sigma, P, Q, cur):
"""
Compute matrix image of sigma on points P and Q in the curve cur
"""
        ipt = act_on_pt(sigma, P, cur)
        iqt = act_on_pt(sigma, Q, cur)
        for l in lst:
            if ipt == l[0]*P + l[1]*Q:
                c1 = l
            if iqt == l[0]*P + l[1]*Q:
                c2 = l
        return matrix((c1,c2)).transpose()



def act_on_pt(sigma, pt, cur):
    return cur.point((sigma(pt[0]), sigma(pt[1]), sigma(pt[2])))

def CreatePoint(E, x0):
    P2 = E.division_polynomial(2)/4
    Y2 = P2(x=x0)
    if Y2.is_square():
        return E.point((x0,Y2.sqrt(),1))
    else:
        return None

def fact_pat(tp):
    ll = list(factor(tp))
    return [(f[0].degree(), f[1]) for f in ll]



class MaxExt:
    def __init__(self, aa,bb,mm,nn):
        try:
            E = EllipticCurve([aa,bb])
        except:
            raise Exception("Unable to define the elliptic curve, may be singular?")
        self.cfs = [aa,bb,mm,nn]
        poly = x**2+mm*x+nn
        poly = poly.polynomial(QQ)
        self.SPP = poly.splitting_field('b1')
        self.curve = E
        self.poly = poly
        self.div2 = E.division_polynomial(2)/4
        self.deg = poly.degree()
        self.ff = FF(a=aa,b=bb,m=mm,n=nn).polynomial(QQ)
        self.K = self.ff.splitting_field('aa')
        self.GG = self.K.galois_group()
        self.gcurve = self.curve.change_ring(self.K)
        self.rts_on_spp = self.poly.change_ring(self.SPP).roots()
        self.Y2s_on_spp = [self.div2(r[0]) for r in self.rts_on_spp]
        self.are_sqs_on_spp = [r.is_square() for r in self.Y2s_on_spp]
        self.rts = self.poly.change_ring(self.K).roots()
        self.Y2s = [self.div2(r[0]) for r in self.rts]
        self.are_sqs = [r.is_square() for r in self.Y2s]
        assert sum(self.are_sqs) == 2
        self.ys = [r.sqrt() for r in self.Y2s]
        ##The line below is not scalable
        pts = [(self.rts[0][0], self.ys[0], 1), (self.rts[1][0], self.ys[1], 1)]
        self.pts = [self.curve.change_ring(self.K).point(pt) for pt in pts]
        self.factpat = fact_pat(self.ff)
        self.P = self.pts[0]
        self.Q = self.pts[1]
        mgns = self.GG.gens()
        mtgns = [matrep(g,self.P,self.Q,self.gcurve) for g in mgns]
        self.gal_image = BG.subgroup(mtgns)
        mg = []
        for g in mtgns:
            mg.append(flatten(g.list()))
        self.magma_gens = mg
    def height_data(self):
        self.height_matrix = self.gcurve.height_pairing_matrix(self.pts)
        self.height_matrix_det = self.height_matrix.determinant()
        self.eigen_vectors = self.height_matrix.change_ring(QQ).right_eigenvectors()
        self.kernel = self.height_matrix.right_kernel_matrix().change_ring(ZZ)
