persistence
save: anObject
	| collection serializedObject |
	
	collection := self collectionAt: anObject class.
	serializedObject := self serialize: anObject.
	(self idOf: anObject)
		ifNotNil: [ :id | collection at: id put: serializedObject ]
		ifNil: [ 
			self flag: #todo. "Obtain the id and keep it in the cache"
			collection add: serializedObject ].
		