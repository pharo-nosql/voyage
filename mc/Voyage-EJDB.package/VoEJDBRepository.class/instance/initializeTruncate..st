initialization
initializeTruncate: aFileReferenceOrString
	
	self initialize.
	databaseReference := aFileReferenceOrString asFileReference.
	self openTruncate