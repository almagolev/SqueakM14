as yet unclassified
initialize
	"properties of a single cell"
	super initialize.
	self borderWidth:0.
	bounds := 0@0 corner: 60@60.
	self color: (Color r:(181/255) g:(136/255) b:(99/255)).