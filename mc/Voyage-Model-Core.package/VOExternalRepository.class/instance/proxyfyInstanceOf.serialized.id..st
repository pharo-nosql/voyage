private retrieving
proxyfyInstanceOf: aClass serialized: serialized id: id
	"Note any referenced root will be up-to-date when de-proxyfied"

	^ VOSerializedLazyProxy
		repository: self
		objectClass: aClass
		id: id
		serialized: serialized