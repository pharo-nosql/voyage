testing
isAllowMissingContent
	^self 
		propertyAt:  #allowMissingContent 
		ifAbsent: [ self class defaultAllowMissingContent ]