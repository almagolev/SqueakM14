as yet unclassified
addLineAt: row1 At: col1 At:row2 At: col2
	"add black line from cell to cell that both has hazards and can't be part of the solution"
	| tmpCell1 tmpCell2 |
	tmpCell1 := cells at: col1 at: row1.
	tmpCell2 := cells at: col2 at: row2.
	"create morph line from cell2 so you would see the line and then it will dissapare because cell2 cant have a queen there."
	tmpCell2 addMorph: (PolygonMorph
		vertices: {(tmpCell1 center).(tmpCell2 center)}
		color: Color black
		borderWidth: 2
		borderColor: Color black)