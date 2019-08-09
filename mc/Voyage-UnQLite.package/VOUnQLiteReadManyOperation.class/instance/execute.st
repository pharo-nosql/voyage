execution
execute 
	"unqlite does not seems to have a way to execute a query with offset and limit, so we 
	 simulate it for now. 
	 Offset is zero based."
	| selected size |
	
	selected := repository
		materializeSelection: ((repository collectionAt: queryClass) select: where)
		of: queryClass.
	
	sortBlock ifNotNil: [ selected sort: sortBlock ].
	
	(offset isNil or: [ limit isNil ])		
		ifTrue: [ ^ selected ].
	
	size := selected size.
	size < offset ifTrue: [ ^ #() ].
	^ selected copyFrom: offset + 1 to: ((offset + limit) min: size)