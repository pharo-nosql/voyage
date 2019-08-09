persistence
commit: aBlock 

	ongoingTransaction ifTrue: [
		aBlock value. 
		^ self ].

	[	ongoingTransaction := true. 
		self database transact: [ aBlock value ] ]
	ensure: [ 
		ongoingTransaction := false ]