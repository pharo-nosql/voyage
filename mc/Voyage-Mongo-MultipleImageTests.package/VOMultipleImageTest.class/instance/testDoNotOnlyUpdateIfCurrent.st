tests
testDoNotOnlyUpdateIfCurrent
	| dog dogId |
	
	"set up scenario"
	self repository onlyUpdateIfCurrent: false.
	
	dog := VOTestDog new name: 'carola'; yourself.
	self repository save: dog.
	dogId := self repository idOf: dog.

	"FORKED IMAGE: change dog name to bar"
	ImageWorker 
		do: [ 
			dog := self repository selectOne: VOTestDog where: (Dictionary with: '_id' -> dogId).
			self deny: dog isNil.
			dog name: 'bar'. 
			self repository save: dog ].

	"The locally updated dog is outdated respect to the db"
	self 
		shouldnt: [ dog name: 'foo'. self repository save: dog ]
		raise: VOMongoSaveConflictError.
		
	dog := self repository selectOne: VOTestDog where: (Dictionary with: '_id' -> dogId).
	self assert: dog name equals: 'foo'.
