predicates
nondeterm pria(STRING)
nondeterm wanita(STRING)
nondeterm istri(STRING,STRING)
nondeterm anak(STRING,STRING)
nondeterm usia(STRING,INTEGER)
nondeterm ibu(STRING)
nondeterm adik(STRING)
nondeterm cucu(STRING)
nondeterm kakek(STRING)
/* Model 2 parameter
nondeterm ibu(STRING,STRING)
nondeterm adik(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm kakek(STRING,STRING)
*/

clauses
istri("Mary","Peter").	istri("Ann","James").
pria("Jhon").		pria("James").		pria("Peter").
wanita("Mary").		wanita("Sue").		wanita("Ann").
anak("Sue","Ann").	anak("Jhon","James").	anak("James","Peter").
usia("Jhon",10).	usia("Sue",13).

ibu(X):- istri(X,_), anak(_,X).
cucu(X):-anak(X,Y), anak(Y,_).
kakek(X):-anak(_,Y), anak(Y,X).
adik(X):- istri(Istri,Suami), anak(X,Suami), anak(Kakak,Istri), usia(Kakak,UsiaKakak), usia(X,UsiaAdik), UsiaAdik<UsiaKakak.
/*
ibu(Ibu,Anak)	:-	istri(Ibu,_), anak(Anak,Ibu); 	istri(Ibu,Ayah), anak(Anak,Ayah).

cucu(Cucu,Kakek):-	anak(Cucu,Ayah), anak(Ayah,Kakek);	anak(Cucu,Ibu), istri(Ibu,Ayah), anak(Ayah,Kakek).

kakek(Kakek,Cucu):-	cucu(Cucu,Kakek).

adik(Adik,Kakak):-	istri(Istri,Suami), anak(Adik,Suami), anak(Kakak,Istri), usia(Kakak,UsiaKakak), usia(Adik,UsiaAdik), UsiaAdik<UsiaKakak.
*/
goal
ibu(Ibu); cucu(Cucu); kakek(Kakek); adik(Adik).

%adik(Adik,Kakak);	ibu(Ibu,Anak);	cucu(Cucu,Kakek);	kakek(Kakek,Cucu).