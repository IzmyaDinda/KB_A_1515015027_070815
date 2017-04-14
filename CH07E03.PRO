/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer,integer) - procedure (i,o,i)

clauses
  length_of([], Result, Result). %jika list kosong result=counter
  length_of([_|T],Result,Counter):- %untuk menghitung panjang list
	NewCounter = Counter + 1, %NewCounter = Counter + 1 dimana counter awal bernilai 0 dan berlanjut hingga list menjadi kosong
	length_of(T, Result, NewCounter). 
        %result didapatkan jika list sudah kosong
goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */