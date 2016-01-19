accessing
mutex
	^mutex ifNil: [mutex := Semaphore forMutualExclusion]