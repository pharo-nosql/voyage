private
collectionAt: aClass

	^ collections 
		at: aClass persistentClass
		ifAbsentPut: [ 
			database collectionNamed: (self collectionNameFor: aClass) ]