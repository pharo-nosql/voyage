persistence
selectMany: aClass where: aBlock sortBy: sortBlockOrSymbol
	^ self 
		selectMany: aClass 
		where: aBlock 
		order: sortBlockOrSymbol 
		limit: 0 
		offset: 0