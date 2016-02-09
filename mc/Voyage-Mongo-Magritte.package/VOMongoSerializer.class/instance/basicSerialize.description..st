private
basicSerialize: anObject description: aDescription
	| oldObject oldJSON jsonDictionary |
	
	anObject isTypeForbidden 
		ifTrue: [ VOMongoForbiddenError signal: anObject className ].

	oldObject := self object.
	oldJSON := self json.
	[  
	  json := jsonDictionary := Dictionary new.
	  self object: anObject.
	  self addSpecialAttributesFrom: anObject description: aDescription.
	  self visit: aDescription  ]
	ensure: [ 
		self object: oldObject.
		self json: oldJSON ].
	
	^ jsonDictionary