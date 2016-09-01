private
findFutureFor: anObject
	^ futures 
		detect: [ :each | each realObject = anObject ]
		ifNone: [ nil ]