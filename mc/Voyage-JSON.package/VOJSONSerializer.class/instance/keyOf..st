private
keyOf: anObject 
	^ (self repository idOf: anObject)
		ifNil: [ VOError signal: 'Invalid reference' ]