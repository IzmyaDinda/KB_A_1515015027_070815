DOMAINS
orang = orang(nama,alamat)%orang memiliki 2 argumen yaitu nama dan alamat
nama = nama(pertama,kedua)%nama memiliki 2 argumen yaitu nama pertama dan nama kedua
alamat = alamat(jalan,kota_kab,propinsi)%alamat memiliki 3 argumen yaitu jalan, kota kabupaten dan propinsi
jalan = jalan(nama_jalan,nomor)%jalan memiliki 2 argumen yaitu nama jalan dan nomor jalan
kota_kab,propinsi,nama_jalan = string%kota kabupaten, propinsi dan nama jalan bertipe data string
pertama,kedua = symbol%nama pertama dan nama kedua bertipe data simbol
nomor = integer%nomo bertipe data integer

GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),%orang dengan nama pertama diena dan nama 
%kedua fatihah, memiliki alamat dengan nama jalan wijaya dan nomor jalan 12, kota kabupaten Berbah dan propinsi DIY
P1 = orang(nama(_,fatihah),Alamat),%orang dengan nama pertama anonymous dan nama kedua fatihah, alamat sama dengan p1
P2 = orang(nama(nur,fatihah),Alamat),%orang dengan nama pertama nur dan nama kedua fatihah, alamat sama dengan p1
write("P1=",P1),nl,
write("P2=",P2),nl.