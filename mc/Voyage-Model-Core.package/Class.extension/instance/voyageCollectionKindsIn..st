*Voyage-Model-Core
voyageCollectionKindsIn: aCollection
	self subclassesDo: [ :cls |
		(cls class includesSelector: #isVoyageRoot)
			ifFalse: [ 
				aCollection add: cls.
				cls voyageCollectionKindsIn: aCollection ] ]