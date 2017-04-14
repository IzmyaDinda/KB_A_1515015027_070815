/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer) - procedure (i,o)

clauses
  length_of([], 0). %jika list kosong L bernilai 0
  length_of([_|T],L):- %untuk menghitung panjang list menggunakan aturan ini
	length_of(T,TailLength), %panjang T=list dan L=TailLength + 1\ dimana TailLength adalah banyaknya head hingga list menjadi list kosong
	L = TailLength + 1.

goal
  length_of([1,2,3],L).
