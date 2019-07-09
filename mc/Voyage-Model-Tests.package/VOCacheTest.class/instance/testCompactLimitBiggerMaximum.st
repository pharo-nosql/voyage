tests
testCompactLimitBiggerMaximum
	self 
		assert: (VOCache 
			calculateCompactLimit: VOCache maximumCompactLimit
			forSize:  VOCache maximumCompactLimit + 100)
		equals: VOCache maximumCompactLimit 