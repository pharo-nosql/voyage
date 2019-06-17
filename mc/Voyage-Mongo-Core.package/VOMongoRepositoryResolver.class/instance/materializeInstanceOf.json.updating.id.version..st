private retrieving
materializeInstanceOf: aClass json: jsonDictionary updating: cachedObject id: id version: jsonVersion 
	"Note any referenced root will be up-to-date because of the materializer"

	| result |
	cachedObject 
		ifNotNil: [ result := cachedObject ]
		ifNil: [ 
			result := (self retrieveClassOf: aClass json: jsonDictionary) basicNew.
			self cacheAt: id put: result ].

	self cacheAt: id putVersion: jsonVersion.
	self materialize: result fromJSON: jsonDictionary.
	
	^ result