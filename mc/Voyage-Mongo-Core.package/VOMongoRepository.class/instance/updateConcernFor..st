operations
updateConcernFor: aClass

	^updateConcerns at: aClass
		ifPresent: [:val | val]
		ifAbsent: [ defaultUpdateConcern ]