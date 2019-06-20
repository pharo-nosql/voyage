api
delete: anExample from: aCollection withConcern: aConcern limit: aLimit
	"Always check the error on replica sets."
	self commandDelete: anExample from: aCollection withConcern: aConcern limit: aLimit