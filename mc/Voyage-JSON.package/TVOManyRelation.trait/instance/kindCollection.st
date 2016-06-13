accessing
kindCollection 
	^self 
		propertyAt: #kindCollection 
		ifAbsent: [ self class defaultKindCollection ]