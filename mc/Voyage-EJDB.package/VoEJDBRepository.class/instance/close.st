open/close
close 

	database ifNil: [ ^ self ].
	database close.
	database := nil.
	"collections := Dictionary new"