api
add: anExample to: aCollection withConcern: aConcern
	aConcern
		ifNil: [ aCollection add: anExample  ]
		ifNotNil: [ self commandInsert: anExample to: aCollection withConcern: aConcern ]