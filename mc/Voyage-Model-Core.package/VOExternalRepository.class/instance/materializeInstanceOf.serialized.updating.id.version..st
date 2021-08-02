private retrieving
materializeInstanceOf: aClass serialized: serialized updating: cachedObject id: id version: jsonVersion 
	"Note any referenced root will be up-to-date because of the materializer"
	| result cacheForClass |
	
	cacheForClass := self cacheFor: aClass.
	cachedObject 
		ifNotNil: [ result := cachedObject ]
		ifNil: [ 
			result := (self retrieveClassOf: aClass serialized: serialized) basicNew.
			"The following materialization can contain cyclic references. To be able
			to solve this we need a value in the cache that can be retrieved not to 
			initiate an endless loop. We place a future value here as long as the current
			object is not fully materialized"
			cacheForClass at: id put: (VOJSONFuture realObject: result) ].
		
	cacheForClass at: id putVersion: jsonVersion.

	self newMaterializer 
		materialize: result 
		from: serialized.
		
	"if the object is not the cachedObject it needs to be added to the cache. We hand
	out object, id and version in one row to make use of the mutex in the cache. During
	materialization someone else could have added an object in the cache. In that case
	the ifPresent: block retrieves the already present object and we discard the one we
	have created"
	(result == cachedObject) ifFalse: [ 
		cacheForClass 
			cacheObject: result value
			id: id 
			version: jsonVersion  ].
 
	result voyagePostMaterialization: self serialized: serialized.
	^ result