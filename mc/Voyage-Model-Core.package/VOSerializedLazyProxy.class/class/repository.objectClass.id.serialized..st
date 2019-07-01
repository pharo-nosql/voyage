instance creation
repository: aRepository objectClass: aClass id: idObject serialized: serialized
	^ self basicNew 
		initializeRepository: aRepository 
			class: aClass 
			id: idObject
			serialized: serialized 