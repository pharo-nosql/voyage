accessing
cacheObject: anObject id: anOID version: aVersion

	self 
		cacheObject: anObject 
		id: anOID 
		version: aVersion
		ifPresent: [ :value | "ignore for backward compatibility" ]


