as yet unclassified
removeQueenAt: i At: j
	"remove queen from a given cell"
	| tmpCell |
	tmpCell := cells at: j at: i.
	tmpCell removeAllMorphs.