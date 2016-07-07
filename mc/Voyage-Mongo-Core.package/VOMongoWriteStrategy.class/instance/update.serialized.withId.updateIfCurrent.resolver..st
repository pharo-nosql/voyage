persistence
update: anObject serialized: jsonDictionary withId: aOID updateIfCurrent: aBoolean resolver: resolver
	"Update/Save an object, interacting with the resolver."

	^ self subclassResponsibility