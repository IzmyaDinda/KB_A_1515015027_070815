predicates
nondeterm putra(STRING,STRING)
nondeterm putri(STRING,STRING)
nondeterm saudari(STRING,STRING)
nondeterm saudara(STRING,STRING)
nondeterm menikah(STRING,STRING)
nondeterm ayah(STRING,STRING)
nondeterm ibu(STRING,STRING)

clauses
putra("Dikta","Trisana").
putra("Dirga","Kusuma").
putra("Trisana","James").
putra("Kusuma","James").
putri("Yusnita","Trisana").
saudari("Yusnita","Hesty").
saudari("Yusnita","Izmya").
saudara("Trisana","Kusuma").
menikah("Trisana","Rika").
menikah("Kusuma","Nuraini").
menikah("James","Angelina").

ayah(X,Y):-putra(Y,X).
ayah(X,Y) :- putri(Y,X);saudari(F,Y),putri(F,X).

ibu(X,Y):-putra(Y,Z),menikah(Z,X).
ibu(X,Y) :- putri(Y,Z),menikah(Z,X);saudari(F,Y),putri(F,Z),menikah(Z,X).

goal
ibu(Ibu,Anak);
ayah(Ayah,Anak).
