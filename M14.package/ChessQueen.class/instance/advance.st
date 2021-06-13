as yet unclassified
advance
	| secTime |
	secTime := 0.01.
	World doOneCycle. 	secTime seconds asDelay wait.
	chess removeQueenAt:row At:column.
	row = N
	ifTrue: [neighbor nextSolution ifFalse: [^ false]. row := 1].
	World doOneCycle. 	secTime seconds asDelay wait.
	row := row + 1.
	chess addQueenAt:row At:column.
	^ true