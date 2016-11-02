private retrieving
proxyfyInstanceOf: aClass json: jsonDictionary id: id
	"Note any referenced root will be up-to-date when de-proxyfied"

	^ VOMongoJSONLazyProxy
		repository: repository
		objectClass: aClass
		id: id
		json: jsonDictionary