private
obtainRealObject
	^ repository 
		selectOne: objectClass 
		where: (Dictionary with: '_id'->objectId)	