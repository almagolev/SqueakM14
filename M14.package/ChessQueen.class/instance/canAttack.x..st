as yet unclassified
canAttack: testRow x: testColumn
	"if true so draw aline from hazards cells"
	| columnDifference |
	columnDifference := testColumn - column.
	((row = testRow
		or: [row + columnDifference = testRow])
		or: [row - columnDifference = testRow])
	ifTrue: [chess addLineAt: row At: column At: testRow At: testColumn. ^ true].
	^ neighbor canAttack: testRow x: testColumn