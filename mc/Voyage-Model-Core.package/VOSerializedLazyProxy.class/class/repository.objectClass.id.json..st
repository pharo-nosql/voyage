instance creation
repository: aRepository objectClass: aClass id: idObject json: jsonDictionary
	^self basicNew 
		initializeRepository: aRepository 
			class: aClass 
			id: idObject
			serialized: jsonDictionary 