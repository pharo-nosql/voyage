execution
execute 
	^ (self basicSelect
		collect: [ :each | repository retrieveQueriedInstanceOf: queryClass serialized: each ]
		as: repository collectionClass)
			select: [ :each | each isKindOf: queryClass ] 