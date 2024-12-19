load "NSUBSG2.m";
G2 := GL(2, Integers());
mgns := [[0, -1, 1, 0],
[-1, 0, 0, -1],
[0, 1, 1, 0]];

T2 := sub<G2|mgns>;

FlattenMatrix := function(mt)
    return [mt[1][1],mt[1][2],mt[2][1],mt[2][2]];
end function;

CreateGens := function(sb)
    gns := Generators(sb`subgroup);
    lgns := [];
    for g in gns do
	lgns := Append(lgns, FlattenMatrix(g));
    end for;
    return lgns;
end function;


CreateGroup := function(n)
    return sub<T2|AGNS2[n]>;
end function;


WhichGroup := function(gns)
    si := sub<T2|gns>;
    for i in [1..8] do
	if IsConjugate(T2,sub<T2|AGNS2[i]>, si) then
	    return i;
	end if;
    end for;
end function;

