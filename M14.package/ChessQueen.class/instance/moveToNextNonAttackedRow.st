as yet unclassified
moveToNextNonAttackedRow
	[neighbor canAttack: row x: column]
		whileTrue: [self advance ifFalse: [^ false]].
	^ true