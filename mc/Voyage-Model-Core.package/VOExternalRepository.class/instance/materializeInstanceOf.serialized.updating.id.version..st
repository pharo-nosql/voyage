private retrieving
materializeInstanceOf: aClass serialized: serialized updating: cachedObject id: id version: jsonVersion 
	"Note any referenced root will be up-to-date because of the materializer"

	| result |
	cachedObject 
		ifNotNil: [ result := cachedObject ]
		ifNil: [ 
			result := (self retrieveClassOf: aClass serialized: serialized) basicNew.
			self cacheAt: id put: result ].

	self cacheAt: id putVersion: jsonVersion.
	self newMaterializer materialize: result from: serialized.
	
	^ result