private retrieving
synchronizeInstanceOf: aClass serialized: serialized updating: cachedObject

	| roots syncRoots |
	roots := self allOtherRootsFrom: cachedObject.
	roots := roots asArray.
	syncRoots := roots collect: [ :root | self synchronize: root ].
	syncRoots ifNotEmpty: [
		self flushCache.
		roots elementsForwardIdentityTo: syncRoots copyHash: false ]