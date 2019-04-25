tests
testDefaultPortUrl
	| url |
	url := 'db.myserver' asMongoUrl.
	self assert: url scheme equals: 'mongodb'.
	self assert: url host equals: 'db.myserver'.
	self assert: url port equals: 27017.