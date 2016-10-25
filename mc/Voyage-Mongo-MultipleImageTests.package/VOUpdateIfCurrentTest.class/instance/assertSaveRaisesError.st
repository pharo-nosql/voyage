running
assertSaveRaisesError
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

	"The locally updated dog is outdated respect to the db"
	self 
		should: [ dog name: 'bar'. repository save: dog ]
		raise: VOMongoNotCurrentError.
		
	"Assert: The local update was not done since local object was outdated."
	dog := repository 
		selectOne: VOTestDog 
		where: (Dictionary with: VOMongoJSONSerializer fieldRootId -> dogId).
	self assert: dog name equals: 'foo'.

	"Now dog is current so can be updated normally"
	dog name: 'bar'. 
	repository save: dog.
	dog := repository 
		selectOne: VOTestDog 
		where: (Dictionary with: VOMongoJSONSerializer fieldRootId -> dogId).
	self assert: dog name equals: 'bar'.
