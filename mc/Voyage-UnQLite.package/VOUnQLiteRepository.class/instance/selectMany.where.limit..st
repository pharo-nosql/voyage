persistence
selectMany: aClass where: condition limit: aNumber
	^ self 
		selectMany: aClass 
		where: condition 
		limit: aNumber
		offset: 0