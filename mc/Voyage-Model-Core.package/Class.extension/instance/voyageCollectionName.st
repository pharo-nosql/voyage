*voyage-model-core-extensions
voyageCollectionName
	"This method can be overridden with a more meaningful collection name" 
	^ ((self persistentClass name first: 3) allSatisfy: #isUppercase)
		ifTrue: [ (self persistentClass name allButFirst: 2) ] 
		ifFalse: [ self persistentClass name ]