instance creation
onTruncate: aReferenceOrName

	^ self basicNew 
		initializeTruncate: aReferenceOrName;
		yourself