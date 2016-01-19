persistence
selectOne: aClass where: aBlock
	^(self listOf: aClass) detect: aBlock ifNone: [ nil ]