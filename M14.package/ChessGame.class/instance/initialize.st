as yet unclassified
initialize
	"create board"
	| cell width height |
	super initialize.
	N := 9.
	cell := ChessCell new.
	width := cell width* N.
	height := cell height* N.
	self bounds: (5@5 extent: (width @ height) + ( 2 * self borderWidth )).
	cells := Matrix new: N tabulate: [:i :j | self newCellAt:i At:j].