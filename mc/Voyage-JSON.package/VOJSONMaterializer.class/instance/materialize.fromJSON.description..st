materializing
materialize: anObject fromJSON: aDictionary description: aDescription
	| oldObject oldJSON |
	
	oldObject := self object.
	oldJSON := self json.
	[  
	  self object: anObject.
	  self json: aDictionary.
	  self visit: aDescription.
	aDescription executePostLoad: self object.
	 ^self object ]
	ensure: [ 
		self object: oldObject.
		self json: oldJSON ]