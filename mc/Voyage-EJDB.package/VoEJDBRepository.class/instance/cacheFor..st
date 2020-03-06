private
cacheFor: aClass

	^ cacheByCollection
		at: aClass persistentClass 
		ifAbsentPut: [ VOCache new ]