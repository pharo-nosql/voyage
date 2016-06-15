private
cacheAt: aClass
	^ cacheByCollection
		at: aClass persistentClass 
		ifAbsentPut: [ VOCache new ]