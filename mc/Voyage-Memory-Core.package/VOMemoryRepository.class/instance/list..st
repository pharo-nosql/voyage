private
list: aClass
	^objectMap 
		at: (self collectionNameOf: aClass) 
		ifAbsentPut: [ Set new ]