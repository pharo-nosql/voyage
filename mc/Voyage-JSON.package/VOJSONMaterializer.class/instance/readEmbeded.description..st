private
readEmbeded: aDictionary description: aDescription 
	^self 
		materialize: (self 
			objectFromJSON: aDictionary 
			orDescription: aDescription)
		fromJSON: aDictionary 