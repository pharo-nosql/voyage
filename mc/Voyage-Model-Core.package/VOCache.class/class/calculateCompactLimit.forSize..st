as yet unclassified
calculateCompactLimit: limit forSize: aNumber
	| occupiedPercent newSize |
	occupiedPercent := (aNumber * 100) / limit.
	
	(occupiedPercent >= 85) 
		ifTrue: [ 
			newSize := limit  + (limit * 20 / 100) truncated.
			^ (newSize min: self maximumCompactLimit) ].

	(occupiedPercent <= 50)
		ifTrue: [ 
			newSize := limit  - (limit * 20 / 100) truncated.
			^ (newSize max: self minimumCompactLimit  )].
	^ limit