accessing
databaseWritingDo: aBlock
	^ self
		databaseWith: aBlock
		readPreference: self readPreferenceForWritingOperations