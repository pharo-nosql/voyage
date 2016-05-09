persistence
update: anObject serialized: jsonDictionary withId: aOID resolver: resolver
	"Update/Save an object, interacting with the resolver."

	^ self subclassResponsibility