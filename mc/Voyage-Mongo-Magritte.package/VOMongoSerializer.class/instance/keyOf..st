private
keyOf: anObject 
	^self repository 
		keyOf: anObject
		ifAbsent: [ VOMongoError signal: 'Invalid reference' ]