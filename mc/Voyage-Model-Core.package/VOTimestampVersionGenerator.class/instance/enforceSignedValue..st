private
enforceSignedValue: unsignedValue
	"16r7FFFFFFFFFFFFFFF = (2 raisedTo: 63) - 1
	 16r10000000000000000 = 2 raisedTo: 64"
	^ unsignedValue > 16r7FFFFFFFFFFFFFFF
		ifTrue: [ unsignedValue - 16r10000000000000000 ]
		ifFalse: [ unsignedValue ]