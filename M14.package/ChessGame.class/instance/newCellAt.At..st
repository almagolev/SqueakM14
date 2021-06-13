as yet unclassified
newCellAt:i At:j
	"create a new cell to given place"
	| cell origin str strMorph |
	
	str := ('(',i,',',j,')').
	strMorph := TextMorph new contents: str; wrapFlag:true;yourself.
	
	cell:= ChessCell new.
	origin := self innerBounds origin.
	(((i+j) rem:2) ==0)
		ifTrue: [cell color: (Color r:(241/255) g:(217/255) b:(181/255))].
	((i==1) or: (j ==1))
		ifTrue: [cell addLabelAt: i At: j].
"		ifTrue: [cell color: Color white. cell addMorph:strMorph]."
	self addMorph: cell.
	cell position: ((i-1) * cell width) @ ((j-1) * cell height) + origin.
	^cell.