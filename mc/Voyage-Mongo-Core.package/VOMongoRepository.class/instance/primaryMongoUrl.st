accessing
primaryMongoUrl
	^ sdamClient topology hasPrimary
		ifTrue: [ sdamClient topology primaryUrl ]
		ifFalse: [ self error ]