open/close
open
	database ifNotNil: [ self close ].
	database := databaseReference 
		ifNotNil: [ PqDatabase open: databaseReference fullName ]
		ifNil: [ PqDatabase openOnMemory ]
	