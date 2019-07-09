tests
testGrowCompactLimitBiggerMaximum
	| limit |
	limit := VOCache minimumCompactLimit.
	1 to: 100 do: [ :n | 
		limit := VOCache 
			calculateCompactLimit: limit 
			forSize:  VOCache maximumCompactLimit + 100 ].
	self 
			assert: limit 
			equals: VOCache maximumCompactLimit 