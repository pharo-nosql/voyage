persistence
selectAll: aClass 
	^self 
		selectMany: aClass 
		where: Dictionary new