private
cacheAt: aClass
	^ cacheByCollection
		at: aClass persistentClass 
		ifAbsentPut: [ VOMongoCache new ]