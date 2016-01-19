visiting
visitToManyDescription: aDescription
	| jsonValue |
	
	(aDescription accessor read: self object) 
		ifNotNil: [ :objects | jsonValue :=  self rawSerialize: objects description: aDescription ].
		
	self 
		jsonAt: aDescription mongoName 
		put: jsonValue