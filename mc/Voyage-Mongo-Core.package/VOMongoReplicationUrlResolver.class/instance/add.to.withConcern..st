api
add: anExample to: aCollection withConcern: aConcern
	"Always check the error on replica sets."
	self commandInsert: anExample to: aCollection withConcern: aConcern