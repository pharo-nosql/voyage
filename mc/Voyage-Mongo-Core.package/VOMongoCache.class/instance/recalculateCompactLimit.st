private
recalculateCompactLimit 
	| occupiedPercent newSize |
	occupiedPercent := (objects size * 100) / self compactLimit.
	
	(occupiedPercent >= 85) 
		ifTrue: [ 
			newSize := self compactLimit  + (self compactLimit * 20 / 100) truncated.
			self compactLimit: (newSize max: self class maximumCompactLimit) ].

	(occupiedPercent <= 50)
		ifTrue: [ 
			newSize := self compactLimit  - (self compactLimit * 20 / 100) truncated.
			self compactLimit: (newSize max: self class minimumCompactLimit  )]