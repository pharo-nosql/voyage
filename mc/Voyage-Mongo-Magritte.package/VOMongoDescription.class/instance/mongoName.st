accessing
mongoName 
	^self 
		propertyAt: #mongoName 
		ifAbsent: [ self attributeName ]