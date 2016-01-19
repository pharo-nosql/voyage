private
collectionAt: aClass inDatabase: db
 	| collectionName |
	collectionName := self collectionNameFor: aClass.
	 ^(collections 
		at: collectionName
		ifAbsentPut: [ db addCollection: collectionName ])
		setDatabase: db name: collectionName;
		yourself