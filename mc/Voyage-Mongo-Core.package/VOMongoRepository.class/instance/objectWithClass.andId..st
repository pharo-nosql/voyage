as yet unclassified
objectWithClass: aClass andId: objectId
	^ self 
		selectOne: aClass 
		where: (Dictionary with: self fieldRootId -> objectId)	