persistence
update: anObject serialized: jsonDictionary withId: aOID
	"Update/Save an object, interacting with the resolver."

	^ self subclassResponsibility