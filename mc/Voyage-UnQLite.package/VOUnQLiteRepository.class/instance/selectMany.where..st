persistence
selectMany: aClass where: condition
	^ self 
		materializeSelection: ((self collectionAt: aClass) select: condition)
		of: aClass