private
materializeObject: jsonDictionary of: aClass
	| materializer id object | 
	materializer := self newMaterializer. 
	id := jsonDictionary 
		at: VOUnQLiteJSONMaterializer fieldRootId
		ifAbsent: [ VOUnQLiteError signal: 'Trying to materialise an object without id.' ].
	object := (self cacheAt: aClass) at: id.
	object ifNil: [ object := (self retrieveClassOf: aClass json: jsonDictionary) basicNew ].
	materializer materialize: object fromJSON: jsonDictionary.
	(self cacheAt: aClass) 
		cacheObject: object 
		id: id 
		version: (jsonDictionary at: VOUnQLiteJSONSerializer fieldVersion).
	^ object