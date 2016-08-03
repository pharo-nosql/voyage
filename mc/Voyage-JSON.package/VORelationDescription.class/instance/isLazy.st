testing
isLazy 
	^self 
		propertyAt:  #lazy
		ifAbsent: [ self class defaultLazy ]