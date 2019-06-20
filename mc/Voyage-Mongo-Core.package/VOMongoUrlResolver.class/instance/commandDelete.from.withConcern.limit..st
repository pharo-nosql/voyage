api
commandDelete: anExample from: aCollection withConcern: aConcern limit: aLimit
	aCollection commandDelete: anExample limit: aLimit writeConcern: aConcern