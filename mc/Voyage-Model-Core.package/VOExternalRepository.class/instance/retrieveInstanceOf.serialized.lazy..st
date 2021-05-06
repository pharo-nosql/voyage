private retrieving
retrieveInstanceOf: aClass serialized: serialized lazy: isLazy
	| id cacheForClass cachedVersion serializedVersion cachedObject result cachedObjectAndId | 

	id := self idFromSerialized: serialized.
	cacheForClass := self cacheFor: aClass. 
	cachedObjectAndId := cacheForClass objectAndVersionAt: id.
	cachedObject := cachedObjectAndId first.
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