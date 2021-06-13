as yet unclassified
addQueenAt: i At: j
	"create a queen image to a given cell"
	| tmpQueen tmpCell |
	tmpQueen := (ImageMorph new newForm: ((ImageReadWriter formFromFileNamed: 'q3.png' ) magnifyBy: 0.2)).
	tmpCell := cells at: j at: i.
	tmpCell addMorph: tmpQueen.
	tmpQueen center: tmpCell center.