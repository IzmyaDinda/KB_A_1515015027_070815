DOMAINS
nama,jender,pekerjaan,benda,alasan,zat = symbol
umur=integer

PREDICATES
nondeterm orang(nama, umur, jender, pekerjaan)%predikat orang memiliki argumen nama, umur, jender dan pekerjaan
nondeterm selingkuh(nama, nama)%predikat selingkuh memiliki argumen nama dan nama
terbunuh_dengan(nama, benda)%predikat terbunuh dengan memiliki argumen nama dan benda
terbunuh(nama)%predikat terbunuh memiliki argumen nama
nondeterm pembunuh(nama)%predikat pembunuh memiliki argumen nama
motif(alasan)%predikat motif memiliki argumen alasan
ternodai(nama, zat)%predikat ternodai memiliki argumen nama dan sebuah zat
milik(nama, benda)%predikat milik memiliki argumen nama dan benda
nondeterm cara_kerja_mirip(benda, benda)%predikat cara kerja mirip memiliki argumen benda dan benda
nondeterm kemungkinan_milik(nama, benda)%predikta kemungkinan mirip memiliki argumen nama dan benda
nondeterm dicurigai(nama)%predikat dicurigai memiliki argumen nama

/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES
orang(budi,55,m,tukang_kayu).%orang bernama budi, umur 55, jender laki-laki, dan pekerjaan tukang kayu
orang(aldi,25,m,pemain_sepak_bola).%orang bernama aldi, umur 25, jender laki-laki, dan pekerjaan pemain sepak bola
orang(aldi,25,m,tukang_jagal).%orang bernama aldi, umur 25, jender laki-laki, dan pekerjaan tukang jagal
orang(joni,25,m,pencopet).%orang bernama joni, umur 25, jender laki-laki, dan pekerjaan pencopet
selingkuh(ina,joni).%ina selingkuh dengan joni
selingkuh(ina,budi).%ina selingkuh dengan budi
selingkuh(siti,joni).%ina selingkuh dengan joni
terbunuh_dengan(siti,pentungan).%siti terbunuh dengan pentungan
terbunuh(siti).%siti terbunuh
motif(uang).%dengan motif uang
motif(cemburu).%motif cemburu
motif(dendam).%motif dendam
ternodai(budi, darah).%budi ternodai dengan darah
ternodai(siti, darah).%siti ternodai dengan darah
ternodai(aldi, lumpur).%aldi ternodai dengan lumpur
ternodai(joni, coklat).%joni ternodai dengan coklat
ternodai(ina, coklat).%ina ternodai dengan coklat
milik(budi,kaki_palsu).%budi memiliki kaki palsu
milik(joni,pistol).%joni memiliki pistol

/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan).%kaki memiliki cara kerja yang mirip dengan pentungan
cara_kerja_mirip(balok, pentungan).%balok memiliki cara kerja yang mirip dengan pentungan
cara_kerja_mirip(gunting, pisau).%gunting memiliki cara kerja yang mirip dengan pisau
cara_kerja_mirip(sepatu_bola, pentungan).%sepatu bola memiliki cara kerja yang mirip dengan pentungan
kemungkinan_milik(X,sepatu_bola):-%X kemungkinan memiliki sepatu bola jika
orang(X,_,_,pemain_sepak_bola).%X adalah seorang pemain sepak bola
kemungkinan_milik(X,gunting):-%X kemungkinan memiliki gunting jika
orang(X,_,_,pekerja_salon).%X adalah seorang pekerja salon
kemungkinan_milik(X,Benda):-%X kemungkinan memiliki sebuah benda jika
milik(X,Benda).%X memiliki benda
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-%X dicurigai jika
terbunuh_dengan(siti,Senjata) ,cara_kerja_mirip(Benda,Senjata) ,%Siti terbunuh dengan senjata dan benda memiliki cara kerja mirip senjata
kemungkinan_milik(X,Benda).%X kemungkinan memiliki benda
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-%X dicurigai jika
motif(cemburu),%mempunyai motif cemburu
orang(X,_,m,_),%X adalah orang dengan jender laki-laki
selingkuh(siti,X).%siti selingkuh dengan X
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-%X dicurigai jika
motif(cemburu),%motifnya cemburu
orang(X,_,f,_),%X berjenis kelamin perempuan
selingkuh(X,Lakilaki),%X selingkuh dengan laki-laki
selingkuh(siti,Lakilaki).%siti selingkuh dengan laki-laki
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
*disini terdapat rule dimana yang dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-%X dicurigai jika
motif(uang),%motif adalah uang
orang(X,_,_,pencopet).%dimana x adalah orang dengan pekerjaan pencopet
pembunuh(Pembunuh):-%seseorang menjadi pembunuh jika
orang(Pembunuh,_,_,_),%orang tersebut adalah pembunuh
terbunuh(Terbunuh),%yang terbunuh adalah si terbunuh
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh),%yang dicurigai adalahh si pembunuh
ternodai(Pembunuh,Zat),%pembunuh ternodai dengan sebuah zat
ternodai(Terbunuh,Zat).%terbunuh ternodai oleh sebuah zat

GOAL
pembunuh(X). 