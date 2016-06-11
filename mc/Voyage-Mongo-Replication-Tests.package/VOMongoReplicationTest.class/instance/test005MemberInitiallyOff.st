tests
test005MemberInitiallyOff

	self 
		shouldnt: [ 
			repository := VOMongoRepository 
				mongoUrls: #('localhost:27029')
				database: 'rs-test'.
			2 seconds wait ]
		raise: Error.
	
	self should: [ repository save: VOTestCat new ] raise: VOMongoConnectionError.
