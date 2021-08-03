private retrieving
materializeInstanceOf: aClass serialized: serialized updating: cachedObject id: id version: jsonVersion

	"Note any referenced root will be up-to-date because of the materializer"

	| result cacheForClass future |
	cacheForClass := self cacheFor: aClass.
	cachedObject 
		ifNotNil: [ 
			result := cachedObject.
			cacheForClass at: id updateVersion: jsonVersion ] 
		ifNil: [ 
			result := (self retrieveClassOf: aClass serialized: serialized)
				          basicNew.
			"The following materialization can contain cyclic references. To be able
				to solve this we need a value in the cache that can be retrieved not to 
				initiate an endless loop. We place a future value here as long as the current
				object is not fully materialized"
			future := VOJSONFuture realObject: result.
			cacheForClass atId: id putObject: future version: jsonVersion ].

	self newMaterializer 
		materialize: result 
		from: serialized.

	"If result is a new object (cachedObject will be nil) we expect a future value
	present in the cache which needs to be replaced with the real object and waiting
	processes to be signalled about the availability of the new object"
	result == cachedObject ifFalse: [ 
		cacheForClass atId: id resolveFutureWith: result ].

	result voyagePostMaterialization: self serialized: serialized.
	^ result