running
setUpDogWithOutdatedReferenceOf: dogClass

	| owner dogId |
	"create dog with owner named foo"
	dog := dogClass new name: 'cometa'; yourself.
	owner := 
		VOTestOwner new 
			name: 'foo'; 
			addPet: dog;
			yourself.
	repository save: owner.
	dogId := repository idOf: dog.
	
	"FORKED IMAGE: change owner name to bar"
	self waitForWriteOperation.
	self forkImageAndDo: [ 
		(repository selectAll: VOTestOwner) 
			do: [ :each | each name: 'bar'. repository save: each ] ].
	
	self waitForWriteOperation.
	dog := repository 
		selectOne: dogClass 
		where: (Dictionary with: VOMongoJSONSerializer fieldRootId -> dogId).
