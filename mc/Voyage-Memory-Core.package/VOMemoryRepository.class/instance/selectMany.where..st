persistence
selectMany: aClass where: aBlock
	aBlock ifNil: [ ^ self selectAll: aClass ].
	^ (self listOf: aClass) select: aBlock