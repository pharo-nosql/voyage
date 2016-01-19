persistence
selectMany: aClass where: aBlock
	^(self listOf: aClass) select: aBlock