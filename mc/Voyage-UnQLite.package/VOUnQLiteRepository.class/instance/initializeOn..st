initialization
initializeOn: aFileReferenceOrString
	self initialize.
	databaseReference := aFileReferenceOrString asFileReference.
	self open.