persistence
selectMany: aClass where: aDictionary
	^self selectMany: aClass where:  aDictionary limit: nil offset: 0.