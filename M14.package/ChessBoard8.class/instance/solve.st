as yet unclassified
solve
	"solve Queens problem. the delay here is 3 seconds so we will see every solution."
	| secTime count |
	secTime := 3.
	count :=0.
	Transcript clear.
	chess openInWorld.
	lastQueen firstSolution
		ifTrue: [Transcript show: lastQueen result printString; cr. count:=count +1.
			World doOneCycle. secTime seconds asDelay wait.
			[lastQueen nextSolution:count]
				whileTrue: [Transcript show: lastQueen result printString; cr. count:=count +1.
					World doOneCycle. secTime seconds asDelay wait.].
			Transcript show: 'End of Solutions.'; cr]
		ifFalse: [Transcript show: 'No Solution.'; cr]