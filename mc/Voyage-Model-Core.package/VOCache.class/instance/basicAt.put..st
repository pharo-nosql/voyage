accessing
basicAt: anOID put: anObject 
	objects at: anOID put: anObject.
	reversedObjects at: anObject put: anOID