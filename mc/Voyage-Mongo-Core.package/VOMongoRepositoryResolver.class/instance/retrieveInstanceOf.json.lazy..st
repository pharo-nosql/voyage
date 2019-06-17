private retrieving
retrieveInstanceOf: aClass json: jsonDictionary lazy: isLazy

	| id cachedVersion jsonVersion cachedObject result | 
	id := jsonDictionary at: VOMongoJSONSerializer fieldRootId.
	cachedObject := self cacheAt: id.
	cachedVersion := self cacheVersionAt: id.
	jsonVersion := jsonDictionary at: VOMongoJSONSerializer fieldVersion ifAbsent: [ 0 ].
	result := cachedObject.
	
	(cachedObject isNil or: [ cachedVersion ~= jsonVersion ])
		ifTrue: [
			result := isLazy 
				ifFalse: [ 
					self materializeInstanceOf: aClass json: jsonDictionary updating: cachedObject id: id version: jsonVersion ]
				ifTrue: [ 
					self proxyfyInstanceOf: aClass json: jsonDictionary id: id ] ]
		ifFalse: [
			"Cached object is up-to-date, but referenced roots may need to sync"
			(repository mustEnsureCurrentReferecesOnQueriesOf: aClass) ifTrue: [ 
				self synchronizeInstanceOf: aClass json: jsonDictionary updating: cachedObject ] ].
		
	^result