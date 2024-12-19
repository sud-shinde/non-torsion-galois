//n is the degree of f. The bottom irreducible polynomials

MultiCyclic := function(lst)
    grps := [CyclicGroup(n) : n in lst];
    tr := CyclicGroup(1);
    for g in grps do
            tr := DirectProduct(tr, g);
    end for;
    return tr;
end function;


ForI := function(i,n)
	return "(1," cat IntegerToString(i) cat ")(" cat IntegerToString(n+1) cat "," cat IntegerToString(n+i) cat "," cat IntegerToString(2*n+1) cat "," cat IntegerToString(2*n+i) cat ")";
end function;

ProduceGens := function(n)

	tr := ["(" cat IntegerToString(n+1) cat "," cat IntegerToString(2*n+1) cat ")" ];
	for j in [2..n] do
		tr := Append(tr, ForI(j,n));
	end for;
	return tr;
end function;

FullGalois := function(n)
	SM := SymmetricGroup(3*n);
	PERMS := ProduceGens(n);
	tr := sub<SM|[eval(perm) : perm in PERMS]>;
	assert Order(tr) eq Factorial(n)*2^n;
	return tr;
end function;

ProduceTopGens := function(n)
	tr:=[];
	for i in [1..n] do
		tr := Append(tr, "(" cat IntegerToString(n+i) cat "," cat IntegerToString(2*n+i) cat ")");
	end for;
	return tr;
end function;


ProduceTopGalois := function(n)
	SM := FullGalois(n);
        PERMS := ProduceTopGens(n);
        tr := sub<SM|[eval(perm) : perm in PERMS]>;
        assert Order(tr) eq 2^n;
	assert IsNormal(SM, tr);
	QG := quo<SM|tr>;
	assert IsIsomorphic(QG, SymmetricGroup(n));
        Zc := MultiCyclic([2 : i in [1..n]]);
	assert IsIsomorphic(Zc, tr);
        return tr;
end function;
