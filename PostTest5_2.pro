DOMAINS
benda = buku(judul, pengarang) ;%buka memiliki 2 argumen yaitu judul dan pengarang
kuda(nama) ; %kuda memiliki nama
kapal ;
bukubank(saldo)%bukubank memiliki saldo
judul, pengarang, nama = symbol%judul, pengarang dan nama bertipe data symbol
saldo = real%saldo bertipe data real

PREDICATES
nondeterm milik(nama,benda)%seorang nama memiliki benda

CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).%erwin memiliki buku dengan judul Markesot Bertutur dan pengarang Emha Ainun Najib
milik(erwin, kuda(buraq)).%erwin memiliki kuda dengan nama buraq
milik(erwin, kapal).%erwin memiliki kapal
milik(erwin, bukubank(1000)).%erwin memiliki bukubank dengan saldo 1000

GOAL
milik(erwin, Benda).%output yang dihasilkan adalah semua benda milik erwin(buku, kuda, kapal dan bukubank)