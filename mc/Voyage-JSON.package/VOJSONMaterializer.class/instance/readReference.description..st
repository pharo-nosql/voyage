private
readReference: jsonDictionary description: aDescription
	| objectClass |
	objectClass := self classFromJSON: jsonDictionary orDescription: aDescription.
	^ aDescription isLazy
		 ifTrue: [
			self lazyProxyClass
				repository: self repository
				objectClass: objectClass 
				id: (jsonDictionary at: self class fieldId) ]
		ifFalse: [ 
			(self repository 
				selectOne: objectClass 
				where: (Dictionary with: self class fieldRootId -> (jsonDictionary at: self class fieldId)))
				ifNil: [ self missingContentFor: objectClass id: (jsonDictionary at: self class fieldId) ] ]