private
obtainReferenceOf: objectClass id: anId
	self flag: #todo. "This is 'mongo exclusive' and has to be moved there"
	^ self repository 
		selectOne: objectClass 
		where: (Dictionary with: self class fieldRootId -> anId)
			