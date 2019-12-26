private
collectionAt: aClass inDatabase: db
 	| collectionName |
	collectionName := self collectionNameFor: aClass.
	^ MongoCollection database: db name: collectionName