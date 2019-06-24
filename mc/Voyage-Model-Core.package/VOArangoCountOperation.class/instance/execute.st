execution
execute 
	"mimick the same behaviour as mongo where a missing collection does not fail. In
	case of a missing collection the number of objects is zero"
	^ [repository client 
		sizeOfCollection: (repository collectionNameFor: queryClass)]
		on: ArangoCollectionNotFoundError 
		do: [ :err | 0 ].
	