private
readCollection: aCollection description: aDescription
	^aCollection
		collect: [ :each | self readObject: each description: aDescription ]
		as: aDescription kindCollection