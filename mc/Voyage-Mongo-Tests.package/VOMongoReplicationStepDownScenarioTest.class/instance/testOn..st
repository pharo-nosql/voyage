tests
testOn: block
	repository debug: true.
	
	"It will use A as primary, given the replica set configuration"
	self assertPrimaryMongoIsA.
	block value.
	self assertPrimaryMongoIsA.

	"Now, step down member A, current primary."
	VOMongoReplicationTestResources new stepDownA: 15 seconds.

	"Member B is elected as primary"
	15 seconds wait.	
	self assertPrimaryMongoIsA.
	block value.
	self assertPrimaryMongoIsB.

	"Now, wait a bit and then check A is up again and the new primary (it has higher priority than B)."
	10 seconds wait.	
	self assertPrimaryMongoIsB.
	block value.
	self assertPrimaryMongoIsA.
