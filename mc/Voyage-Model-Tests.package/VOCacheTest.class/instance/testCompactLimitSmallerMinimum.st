tests
testCompactLimitSmallerMinimum
	self 
		assert: (VOCache calculateCompactLimit: 2000 forSize: 1000) 
		equals: 2000.