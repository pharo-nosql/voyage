*Voyage-Mongo-Core
nextPutIfMissing: anObject
	monitor
		critical: [ 
			(items includes: anObject)
				ifFalse: [ 
					items addLast: anObject.
					monitor signalAll ] ].
	^ anObject