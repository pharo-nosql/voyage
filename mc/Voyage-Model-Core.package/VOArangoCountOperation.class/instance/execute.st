execution
execute 
	^ repository client 
		sizeOfCollection: (repository collectionNameFor: queryClass).
	