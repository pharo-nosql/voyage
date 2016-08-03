private raw
rawCollection: aCollection description: aDescription
	^aCollection 
		collect: [ :each | self rawSerialize: each description: aDescription ] 
		as: Array