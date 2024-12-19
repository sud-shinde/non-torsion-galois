# non-torsion-galois
Relevant codes of my paper on non torsion Galois representations attached to elliptic curves

rank2data.sage : contains Weierstrass coefficients of 493291 elliptic curves from LMFDB database

VerifyRank2.sage : verification that every curve from rank2data.sage is indeed of the form given in Theorem 4.3.

NSUBSG2.m : magma script containing generators of 8 subgroups from Table 1.

CheckGroup2.m : magma scripts for testing

NF_FF_Gens2.sage : The main sagemath script to compute the field Q(E[f]) and the associated Galois image

Use case:
First in Sage :
%runfile NF_FF_Gens2.sage

sage: mm = MaxExt(-3,-9,2,3) ## f(x) = x^2 + 2*x + 3 and the elliptic curve y^2=x^3-3*x-9. It is taken from Table 2 for group 4.
sage: mm.K.degree() ##gives output 2, the degree of Q(E[f]) over Q
sage: mm.magma_gens ##list of magma genarators, gives [[0, 1, 1, 0]]

Check in Magma :
> load "CheckGroup2.m";
> WhichGroup([[0, 1, 1, 0]]); // should give output 4 for group 4.



