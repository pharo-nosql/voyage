initialization
initializeOn: aFileReferenceOrString
	self initialize.
	database := PqDatabase open: aFileReferenceOrString asFileReference fullName.
	