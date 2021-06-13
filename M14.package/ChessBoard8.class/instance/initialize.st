initialize-release
initialize
	"create chess board"
	| N |
	N := 9.
	chess := ChessGame new.
	lastQueen := ChessQueenTerminator new.
	
	(2 to: N)
		do: [:i | lastQueen := ChessQueen new setColumn: i neighbor: lastQueen aChess: chess aN: N]