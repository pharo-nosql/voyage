private
collectionAt: aClass
	^ collections 
		at: aClass persistentClass
		ifAbsentPut: [ self database collectionName: (self collectionNameFor: aClass) ]