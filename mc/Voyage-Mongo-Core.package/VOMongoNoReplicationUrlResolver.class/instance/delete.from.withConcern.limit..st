api
delete: anExample from: aCollection withConcern: aConcern limit: aLimit
	aConcern
		ifNil: [ aCollection remove: anExample ]
		ifNotNil: [
			self commandDelete: anExample from: aCollection withConcern: aConcern limit: aLimit]