*voyage-mongo-core-extensions
nextPutIfMissing: anObject
	monitor
		critical: [ 
			(items includes: anObject)
				ifFalse: [ 
					items addLast: anObject.
					monitor signalAll ] ].
	^ anObject