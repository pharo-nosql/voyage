tests
test101AllDisconected

	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #('localhost:27034').

	"Don't tolerate a too many seconds wait"
	self stepDown: 'localhost:27034' asMongoUrl duringSeconds: 11.
	repository save: VOTestCat new.