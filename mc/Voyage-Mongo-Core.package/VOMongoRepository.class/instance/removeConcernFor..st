operations
removeConcernFor: aClass

	^removeConcerns at: aClass
		ifPresent: [:val | val]
		ifAbsent: [ defaultRemoveConcern ]