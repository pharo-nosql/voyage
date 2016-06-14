visiting
visitToManyDescription: aDescription
	| objectValue |
	
	(self jsonAt: aDescription jsonName)
		ifNotNil: [ :collection | 
			objectValue := self readCollection: collection description: aDescription ]
		ifNil: [
			aDescription convertNull
				ifNotNil: [ :block | objectValue := block value ] ].
	
	aDescription accessor
		write: objectValue	
		to: self object.