tests
testFullUrl
	| url |
	url := 'db.myserver:8888' asMongoUrl.
	self assert: url scheme equals: 'mongodb'.
	self assert: url host equals: 'db.myserver'.
	self assert: url port equals: 8888.