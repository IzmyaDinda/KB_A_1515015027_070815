PREDICATES
nondeterm dapat_membeli(symbol, symbol)
nondeterm orang(symbol)
nondeterm mobil(symbol)
suka(symbol, symbol)
dijual(symbol)

CLAUSES
dapat_membeli(X,Y):- % X dapat membeli Y jika
orang(X), mobil(Y), suka(X,Y), dijual(Y). % X adalah orang atau Y adalah mobil atau X suka Y atau Y itu dijual

orang(nur).	orang(yudi).	orang(dian).	orang(heni). % nur, yudi, dian dan heni adalah nama orang
mobil(atoz).	mobil(kijang). % atoz dan kijang adalah nama mobil
suka(dian, atoz).	suka(yudi, pecel). % Dian suka atoz dan yudi suka pecel
suka(heri, buku).	suka(nur, komputer). % heri suka buku dan nur suka komputer 
dijual(kijang).		dijual(atoz).	dijual(buku). % Kijang, atoz dan buku adalah barang yang dijual

GOAL
dapat_membeli(Siapa,Apa). % goal yang didapat adalah siapa=dian dan apa=atoz karena dian adalah orang, atoz adalah mobil, dian menyukai atoz dan atoz dijual
%suka(_,Apa).
%suka(Siapa,_).
%dapat_membeli(_,Apa).
%dapat membeli(Siapa,_).