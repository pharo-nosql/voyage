system primitives
doesNotUnderstand: aMessage 
	| realObject |
	
	realObject := repository 
		selectOne: objectClass 
		where: (Dictionary with: '_id'->objectId).
	realObject ifNil: [
		(repository descriptionBuilder for: objectClass) isAllowMissingContent
			ifTrue: [ 
				realObject := VOMongoMissing class: objectClass id: objectId ]
			ifFalse: [ 
				VOMongoError signal: ('Lazy reference not found {1}: {2}' format: {objectClass name. objectId}) ] ].
	
	self becomeForward: realObject.
	^realObject
		perform: aMessage selector 
		withArguments: aMessage arguments.