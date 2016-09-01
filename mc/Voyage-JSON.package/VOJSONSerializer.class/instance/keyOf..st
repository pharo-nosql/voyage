private
keyOf: anObject 
	^ (self repository idOf: anObject)
		ifNil: [ VOMongoError signal: 'Invalid reference' ]