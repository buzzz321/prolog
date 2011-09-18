word(abalone,a,b,a,l,o,n,e).
word(abandon,a,b,a,n,d,o,n).
word(enhance,e,n,h,a,n,c,e).
word(anagram,a,n,a,g,r,a,m).
word(connect,c,o,n,n,e,c,t).
word(elegant,e,l,e,g,a,n,t).

crosswd(Col1,Col2,Col3,Row1,Row2,Row3) :- word(Col1,_,VH11,_,VH12,_,VH13,_),
	                                  word(Col2,_,VH21,_,VH22,_,VH23,_),
					  word(Col3,_,VH31,_,VH32,_,VH33,_),
					  word(Row1,_,VH11,_,VH21,_,VH31,_),
	                                  word(Row2,_,VH12,_,VH22,_,VH32,_),
					  word(Row3,_,VH13,_,VH23,_,VH33,_).
					  