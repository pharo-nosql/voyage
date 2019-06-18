testing
mustEnsureCurrentReferecesOnQueriesOf: aClass
	^ self isEnsuringCurrentReferencesOnQueries or: [ aClass isEnsuringCurrentReferencesOnQueries ]