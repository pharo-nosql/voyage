private
retrieveObjectOf: aClass json: aDictionary
	| id cachedVersion retrievedVersion object | 
	
	id := aDictionary at: '_id'.
	object := self cacheAt: id.
	cachedVersion := self cacheVersionAt: id.
	retrievedVersion := aDictionary 
		at: VOMongoJSONSerializer fieldVersion
		ifAbsent: [ 0 ].
	(object isNil or: [ cachedVersion ~= retrievedVersion ])
		ifTrue: [
			object ifNil: [ 
				object := (self retrieveClassOf: aClass json: aDictionary) basicNew.
				self cacheAt: id put: object ].
			self cacheAt: id putVersion: retrievedVersion.
			self materialize: object fromJSON: aDictionary ].
	^object