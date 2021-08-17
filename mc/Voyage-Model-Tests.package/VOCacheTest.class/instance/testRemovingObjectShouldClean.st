tests
testRemovingObjectShouldClean 
	| cache object version objects reversedObjects versions assoc |
	cache := VOCache new.
	object := Object new.
	version := '123'.
	"now the cache sets up the references: 
	objects: OID -> object (WeakValue)
	reversedObjects: object -> OID (WeakKey)
	versions: OID -> number"
	cache cacheObject: object id: OID nextOID version: version.

	objects := cache instVarNamed: #objects.
	reversedObjects := cache instVarNamed: #reversedObjects.
	versions := cache instVarNamed: #versions.
	
	"all three dictionaries now contain one element"
	self assert: objects size equals: 1.
	self assert: reversedObjects size equals: 1.
	self assert: versions size equals: 1.
	"removing the strong reference to object does not change anything..."
	object := nil.
	self assert: objects size equals: 1.
	self assert: reversedObjects size equals: 1.
	self assert: versions size equals: 1.
	"... until we garbage collect"
	Smalltalk garbageCollect.
	"Now we have an association in objects that has a nil value but holds onto the key"
	assoc := (objects instVarNamed: #array) detect: #notNil.
	self assert: assoc value equals: nil.
	self assert: assoc key notNil.
	assoc := nil.
	"And a reversedObject with a nil key holding onto the value"
	self assert: reversedObjects size equals: 1.
	"And therefor there versions entry is still there"
	self assert: versions size equals: 1.
	"If the objects dictionary gets rehashed"
	(cache instVarNamed: #objects) rehash.
	"The references for the OID is gone"
	self assert: ((objects instVarNamed: #array) select: #notNil) size equals: 0.
	"But the one in reveresedObjects is still there"
	self assert: reversedObjects size equals: 1.
	"And so is the versions entry"
	self assert: versions size equals: 1.
	"When the values are finalized in reversedObjects"
	reversedObjects finalizeValues.
	"the entry goes away and the last strong reference to OID"
	self assert: reversedObjects size equals: 0.
	"Garbage collection removes the key from the dictionary"
	Smalltalk garbageCollect.
	self assert: versions size equals: 1.
	self assert: ((versions instVarNamed: #array) select: #notNil) notEmpty.
	"And finalizing makes the dictionary empty"
	versions finalizeValues.
	self assert: versions size equals: 0.
	