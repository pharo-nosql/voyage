private persistence
insertConcernFor: aClass

	^insertConcerns at: aClass
		ifPresent: [:val | val]
		ifAbsent: [ defaultInsertConcern ]