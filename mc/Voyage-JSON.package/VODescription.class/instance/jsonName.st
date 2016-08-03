accessing
jsonName 
	^ (self 
		propertyAt: #jsonName  
		ifAbsent: [ self attributeName ])
		asString