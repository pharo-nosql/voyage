instance creation
repository: aRepository objectClass: aClass id: idObject
	^self basicNew 
		initializeRepository: aRepository 
			class: aClass 
			id: idObject