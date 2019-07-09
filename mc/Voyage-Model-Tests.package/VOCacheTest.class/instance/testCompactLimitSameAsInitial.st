tests
testCompactLimitSameAsInitial
	self 
		assert: (VOCache 
			calculateCompactLimit: 6400 
			forSize: 6400) 
		equals: 7680.