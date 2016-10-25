running
assertSaveWorksFine
	| dog dogId |
	dog := VOTestDog new name: 'original'; yourself.
	repository save: dog.
	dogId := repository idOf: dog.

	"FORKED IMAGE: change dog name to bar"
	self forkImageAndDo: [
		dog := repository 
			selectOne: VOTestDog 
			where: (Dictionary with: VOMongoJSONSerializer fieldRootId -> dogId).
		self deny: dog isNil.
		dog name: 'foo'. 
		repository save: dog ].

	"The locally updated dog is outdated respect to the db, but by default we do not care."
	dog name: 'bar'. repository save: dog.
		
	"Assert: The local update *was* done since by default we do not care."
	dog := repository 
		selectOne: VOTestDog 
		where: (Dictionary with: VOMongoJSONSerializer fieldRootId -> dogId).
	self assert: dog name equals: 'bar'.
