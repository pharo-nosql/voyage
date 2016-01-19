private persistence
basicSelectMany: aClass where: aDictionary limit: limit offset: offset
	"Selecting instances of aClass should be done in the mongo query, not here"
	self flag: #todo.
	
	^((self basicRawSelectMany:  aClass where: aDictionary limit: limit offset: offset)
		collect: [ :each | self retrieveObjectOf: aClass json: each ]
		as: repository collectionClass)
			select: [ :each | each isKindOf: aClass ]
