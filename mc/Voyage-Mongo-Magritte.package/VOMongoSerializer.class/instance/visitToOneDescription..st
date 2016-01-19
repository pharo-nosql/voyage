visiting
visitToOneDescription: aDescription
	| jsonValue |
	(aDescription accessor read: self object) 
		ifNotNil: [ :element | jsonValue := self rawSerialize: element description: aDescription ].
		
	self 
		jsonAt: aDescription mongoName 
		put: jsonValue