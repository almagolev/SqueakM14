as yet unclassified
addLabel:x
	"add number of solutions visually of the left upper corner"
	| str strMorph |
	
	str:=('#',x).
	
	self removeAllMorphs.
	strMorph := TextMorph new contents: str; wrapFlag:true;yourself.
	self color: Color white.
	

	strMorph position: self center.
	self addMorph:strMorph.
