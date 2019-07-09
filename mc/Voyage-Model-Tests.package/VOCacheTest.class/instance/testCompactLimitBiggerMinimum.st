tests
testCompactLimitBiggerMinimum
	self 
		assert: (VOCache 
			calculateCompactLimit: 8000 
			forSize: VOCache minimumCompactLimit + 100)
		equals: 6400.