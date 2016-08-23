instance creation
realObject: anObject 
	^ self new 
		realObject: anObject;
		yourself