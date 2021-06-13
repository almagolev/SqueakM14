as yet unclassified
addLabelAt:i At:j
	| str strMorph |

	(i==1) ifTrue: [str := (' ',(j-1))] ifFalse:[str := (' ',(i-1))].
	((i==1)and:(j==1)) ifTrue:[str:='#0'].
	
	strMorph := TextMorph new contents: str; wrapFlag:true;yourself.
	self color: Color white.
	

	strMorph position: self center.
	strMorph paragraph centered.
	strMorph updateFromParagraph.
	self addMorph:strMorph.
