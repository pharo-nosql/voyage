private retrieving
synchronizeInstanceOf: aClass json: jsonDictionary updating: cachedObject

	| roots syncRoots |
	roots := VOCollector allOtherRootsFrom: cachedObject in: repository.
	roots := roots asArray.
	syncRoots := roots collect: [ :root | repository synchronize: root ].
	syncRoots ifNotEmpty: [
		repository flushCache.
		roots elementsForwardIdentityTo: syncRoots copyHash: false ]