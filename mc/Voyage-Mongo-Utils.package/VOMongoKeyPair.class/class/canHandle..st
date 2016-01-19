testing
canHandle: anObject 
	^anObject isCollection not or: [ anObject isString ]