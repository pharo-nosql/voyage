private retrieving
proxyfyInstanceOf: aClass serialized: jsonDictionary id: id
	"Note any referenced root will be up-to-date when de-proxyfied"

	^ VOMongoJSONLazyProxy
		repository: self
		objectClass: aClass
		id: id
		json: jsonDictionary