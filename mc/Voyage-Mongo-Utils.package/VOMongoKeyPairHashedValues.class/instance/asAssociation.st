converting
asAssociation 
	self flag: #todo. "I'm forcing a dictionary return instead nil, and I'm not sure if that behavior is correct"
	^self key -> (self value 
		ifNotNil: [ self value collect: #asAssociation as: Dictionary ]
		ifNil: [ Dictionary new ])