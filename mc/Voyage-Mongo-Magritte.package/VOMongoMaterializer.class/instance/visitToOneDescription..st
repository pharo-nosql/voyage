visiting
visitToOneDescription: aDescription
	| objectValue |
	
	(self jsonAt: aDescription mongoName)
		ifNotNil: [ :mongoValue | 
			objectValue := self readObject: mongoValue description: aDescription ]
		ifNil: [
			aDescription convertNull
				ifNotNil: [ :block | objectValue := block value ] ].
	
	aDescription accessor
		write: objectValue	
		to: self object.