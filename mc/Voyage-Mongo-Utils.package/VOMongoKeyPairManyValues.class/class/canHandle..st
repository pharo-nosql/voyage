testing
canHandle: anObject 
	^(anObject isString not 
		and: [ anObject isCollection ])
		and: [ anObject isDictionary not ] 