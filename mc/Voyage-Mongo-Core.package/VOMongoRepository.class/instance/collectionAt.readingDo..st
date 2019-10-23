accessing
collectionAt: queryClass readingDo: aBlock
	^ self
		collectionAt: queryClass
		do: aBlock
		readPreference: self readPreferenceForReadingOperations
		