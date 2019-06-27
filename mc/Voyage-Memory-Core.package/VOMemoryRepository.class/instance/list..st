private
list: aClass
	^ objectMap 
		at: (self collectionNameFor: aClass) 
		ifAbsentPut: [ Set new ]