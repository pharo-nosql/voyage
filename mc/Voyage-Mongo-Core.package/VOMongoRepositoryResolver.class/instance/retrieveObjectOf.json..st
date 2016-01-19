private
retrieveObjectOf: aClass json: aDictionary
	| id cachedVersion retrievedVersion object | 
	
	aDictionary at: '$err' ifPresent: [ :message | VOMongoError signal: message ].
	id := aDictionary at: '_id'.
	object := self cacheAt: id.
	cachedVersion := self cacheVersionAt: id.
	retrievedVersion := aDictionary 
		at: VOMongoSerializer fieldVersion
		ifAbsent: [ 0 ].
	(object isNil or: [ cachedVersion ~= retrievedVersion ])
		ifTrue: [
			object ifNil: [ 
				object := (self retrieveClassOf: aClass json: aDictionary) basicNew.
				self cacheAt: id put: object ].
			self cacheAt: id putVersion: retrievedVersion.
			self materialize: object fromJSON: aDictionary ].
	^object