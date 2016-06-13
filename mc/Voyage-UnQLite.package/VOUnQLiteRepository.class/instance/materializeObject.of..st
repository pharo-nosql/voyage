private
materializeObject: jsonDictionary of: aClass
	| materializer id object | 
	materializer := self newMaterializer. 
	id := jsonDictionary 
		at: '__id'
		ifAbsent: [ VOUnQLiteError signal: 'Trying to materialise an object without id.' ].
	object := self cacheAt: id.
	object ifNil: [  ].
	materializer materialize: object fromJSON: jsonDictionary