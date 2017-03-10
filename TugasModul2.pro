predicates
nondeterm anak(STRING,STRING)
nondeterm istri(STRING,STRING)
nondeterm pria(STRING)
nondeterm wanita(STRING)
nondeterm usia(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm ibu(STRING,STRING)
nondeterm adik(STRING,STRING)
nondeterm kakek(STRING,STRING)

clauses
anak("Jhon","James").
anak("James","Peter").
anak("Sue","Ann").
istri("Mary","Peter").
istri("Ann","James").
pria("Jhon").
pria("James").
pria("Peter").
wanita("Mary").
wanita("Sue").
wanita("Ann").
usia("Jhon","10").
usia("Sue","13").

cucu(X,Y):-anak(Z,X),anak(Y,Z).

ibu(X,Y):-istri(X,Z),anak(Z,Y).

adik(X,Y):-anak(Y,Z),istri(Z,W),anak(X,W).

kakek(X,Y):-anak(Y,Z),anak(Z,X).
goal
cucu(_,Cucu);
ibu(Ibu,_);
adik(Adik,_);
kakek(Kakek,_).