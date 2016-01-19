serializing
serialize: anObject description: aDescription using: aDictionary
	| oldObject oldJSON |
	
	anObject isTypeForbidden 
		ifTrue: [ VOMongoForbiddenError signal: anObject className ].
		
	oldObject := self object.
	oldJSON := self json.
	[  
	  self object: anObject.
	  self json: aDictionary.
	  self addSpecialAttributesFrom: anObject description: aDescription.
	  self visit: aDescription.
	  ^self json ]
	ensure: [ 
		self object: oldObject.
		self json: oldJSON ]