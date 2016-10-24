visiting
readAt: aDescription ifAbsent: aBlock
	^ (aDescription accessor read: self object) ifNil: aBlock