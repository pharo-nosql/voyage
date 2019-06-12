persistence
selectAll: aClass sortBy: sortBlock
	^ self 
		selectMany: aClass 
		where: Dictionary new
		order: sortBlock 
		limit: 0 
		offset: 0