instance creation
repository: aRepository resolver: aResolver
	^ self basicNew
		initializeRepository: aRepository resolver: aResolver;
		yourself