private
obtainReferenceOf: objectClass id: anId

	^ self repository 
		selectOne: objectClass 
		where: (Dictionary with: self repository fieldRootId -> anId)
			