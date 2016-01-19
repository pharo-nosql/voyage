private
readDictionary: aDictionary description: aDescription
	| class newDictionary |
	
	class := aDescription kind ifNil: [ Dictionary ].
	newDictionary := class new: aDictionary size. 
	aDictionary keysAndValuesDo:  [ :key :value | 
		newDictionary 
			at: (self readObject: key description: aDescription)
			put: (self readObject: value description: aDescription) ].
	^newDictionary