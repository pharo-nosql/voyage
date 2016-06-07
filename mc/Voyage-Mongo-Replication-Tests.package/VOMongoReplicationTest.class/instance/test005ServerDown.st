tests
test005ServerDown

	self 
		shouldnt: [ 
			repository := VOMongoRepository 
				database: 'rs-test' 
				members: #('localhost:27029').
			2 seconds wait ]
		raise: Error.
	
	self should: [ repository save: VOTestCat new ] raise: VOMongoConnectionError.
