private
obtainReferenceOf: objectClass id: anId

	^ self repository 
		selectOne: objectClass 
		id: anId