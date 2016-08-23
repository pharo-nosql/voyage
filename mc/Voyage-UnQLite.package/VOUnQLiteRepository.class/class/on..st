instance creation
on: aFileReferenceOrString
	^ self basicNew 
		initializeOn: aFileReferenceOrString;
		yourself