private retrieving
materializeInstanceOf: aClass serialized: serialized updating: cachedObject id: id version: jsonVersion 
	"Note any referenced root will be up-to-date because of the materializer"
	| result cacheForClass |
	
	cacheForClass := self cacheFor: aClass.
	cachedObject 
		ifNotNil: [ result := cachedObject ]
		ifNil: [ 
			result := (self retrieveClassOf: aClass serialized: serialized) basicNew.
			cacheForClass at: id put: result ].

	cacheForClass at: id putVersion: jsonVersion.
	self newMaterializer 
		materialize: result 
		from: serialized.
	
	^ result