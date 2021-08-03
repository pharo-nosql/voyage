private retrieving
retrieveInstanceOf: aClass serialized: serialized lazy: isLazy
	| id cacheForClass cachedVersion serializedVersion cachedObject result cachedObjectAndId | 

	id := self idFromSerialized: serialized.
	cacheForClass := self cacheFor: aClass. 
	cachedObjectAndId := cacheForClass objectAndVersionAt: id.
	cachedObject := cachedObjectAndId first.
	cachedObject isTypeFuture ifTrue: [ 
		"When we get a back a future value from the cache it means the materialization
		of that object happens right now. This means either this is a concurrent call
		or we have a cyclic dependency. In case of cyclic dependency it is the same 
		process entering here and we can just return the object of the future value. In
		the concurrent case the future will block until the object is fully materialized" 
		^ cachedObject value ].
	cachedVersion := cachedObjectAndId second.
	serializedVersion := self versionFromSerialized: serialized.
	result := cachedObject.
	
	(cachedObject isNil 
		or: [ cachedVersion ~= serializedVersion ])
		ifTrue: [
			result := isLazy 
				ifFalse: [ 
					self 
						materializeInstanceOf: aClass 
						serialized: serialized 
						updating: cachedObject 
						id: id 
						version: serializedVersion ]
				ifTrue: [ 
					self 
						proxyfyInstanceOf: aClass 
						serialized: serialized 
						id: id ] ]
		ifFalse: [
			"Cached object is up-to-date, but referenced roots may need to sync"
			(self mustEnsureCurrentReferecesOnQueriesOf: aClass) ifTrue: [ 
				self 
					synchronizeInstanceOf: aClass 
					serialized: serialized 
					updating: cachedObject ] ].

	^ result