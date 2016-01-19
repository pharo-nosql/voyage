private
rawDictionary: aDictionary description: aDescription
	| newDictionary |
	
	newDictionary := Dictionary new: aDictionary size.
	aDictionary keysAndValuesDo: [ :key :value | 
		newDictionary 
			at: (self rawSerialize: key description: aDescription) 
			put: (self rawSerialize: value description: aDescription) ].
	^newDictionary 
