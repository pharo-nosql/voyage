convenience
allOtherRootsFrom: anObject in: aRepository
	| instance |
	instance := (self repository: aRepository)
		block: [ :each | each isTypePersistent and: [ each ~~ anObject ] ];
		yourself.
		
	^ instance value: anObject.
