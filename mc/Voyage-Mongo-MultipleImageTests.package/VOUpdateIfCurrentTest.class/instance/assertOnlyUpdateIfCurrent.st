running
assertOnlyUpdateIfCurrent
	| dog dogId |	
	dog := VOTestDog new name: 'carola'; yourself.
	repository save: dog.
	dogId := repository idOf: dog.

	"FORKED IMAGE: change dog name to bar"
	ImageWorker 
		do: [ 
			dog := repository selectOne: VOTestDog where: (Dictionary with: '_id' -> dogId).
			self deny: dog isNil.
			dog name: 'bar'. 
			repository save: dog ].

	"The locally updated dog is outdated respect to the db"
	self 
		should: [ dog name: 'foo'. repository save: dog ]
		raise: VOMongoSaveConflictError.
		
	"Assert: The local update was not done since local object was outdated."
	dog := repository selectOne: VOTestDog where: (Dictionary with: '_id' -> dogId).
	self assert: dog name equals: 'bar'.
