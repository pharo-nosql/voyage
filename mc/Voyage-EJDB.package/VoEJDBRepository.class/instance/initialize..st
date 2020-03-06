initialization
initialize: aFileReferenceOrString
	
	self initialize.
	databaseReference := aFileReferenceOrString asFileReference.
	self open