tests
testCompactLimitEmpty
	self 
		assert: (VOCache 
			calculateCompactLimit: VOCache minimumCompactLimit 
			forSize: 0) 
		equals: VOCache minimumCompactLimit .