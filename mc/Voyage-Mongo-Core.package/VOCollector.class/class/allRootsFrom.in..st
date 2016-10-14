convenience
allRootsFrom: anObject in: aRepository
	| instance |
	instance := (self repository: aRepository)
		block: [:each | each isTypePersistent ];
		yourself.
		
	^instance value: anObject.
