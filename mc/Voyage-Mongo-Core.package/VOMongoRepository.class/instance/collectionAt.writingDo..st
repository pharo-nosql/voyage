accessing
collectionAt: queryClass writingDo: aBlock
	^ self
		collectionAt: queryClass
		do: aBlock
		readPreference: self readPreferenceForWritingOperations
