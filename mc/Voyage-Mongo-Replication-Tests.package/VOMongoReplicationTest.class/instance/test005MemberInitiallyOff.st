tests
test005MemberInitiallyOff
	"The repository shouldn't error at creation time but only on an operation that couldn't complete. 
	Important: This test assumes there is no localhost:27029 mongodb."
	
	self 
		shouldnt: [ 
			repository := VOMongoRepository 
				mongoUrls: #('localhost:27029')
				database: 'rs-test'.
			5 seconds wait ]
		raise: Error.
	
	self should: [ repository save: VOTestCat new ] raise: VOMongoConnectionError.
