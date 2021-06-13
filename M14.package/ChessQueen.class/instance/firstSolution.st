as yet unclassified
firstSolution
	| secTime |
	secTime := 0.01.
	World doOneCycle. 	secTime seconds asDelay wait.
	neighbor firstSolution.
	row _ 2.
	chess addQueenAt: row At: column.
	^ self moveToNextNonAttackedRow