private
cacheFor: aClass

	^ cacheByCollection
		at: aClass persistentClass 
		ifAbsentPut: [ VOProtectedCache new ]