persistence
selectAll: aClass 
	^ self 
		materializeSelection: (self collectionAt: aClass) selectAll
		of: aClass