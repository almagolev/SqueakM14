as yet unclassified
updateSol: x
	"update number of solutions visually"
	| tmpCell |
	tmpCell := cells at: 1 at: 1.
	tmpCell addLabel:x.