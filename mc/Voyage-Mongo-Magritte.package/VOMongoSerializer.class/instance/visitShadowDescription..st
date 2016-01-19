visiting
visitShadowDescription: aDescription
	| jsonValue transformed |
	
	(aDescription accessor read: self object) 
		ifNotNil: [ :element | 
			transformed := aDescription transformationBlock value: element.
			jsonValue := self rawSerialize: transformed description: aDescription ].
		
	self 
		jsonAt: aDescription mongoName 
		put: jsonValue