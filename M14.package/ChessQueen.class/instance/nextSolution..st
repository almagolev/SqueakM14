as yet unclassified
nextSolution: x
"the x represents the number of solutions so far"
	chess updateSol:x.
	^ self advance and: [self moveToNextNonAttackedRow]