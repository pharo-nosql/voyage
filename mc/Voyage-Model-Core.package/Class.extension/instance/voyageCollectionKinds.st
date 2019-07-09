*Voyage-Model-Core
voyageCollectionKinds
	| collectionClasses |
	collectionClasses := Set with: self.
	self 
		voyageCollectionKindsIn: collectionClasses.
	^ collectionClasses 