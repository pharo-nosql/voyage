tests
testSelectOneWithSubclass
	| retrieved |
	self repository save: (VOTestCat new name: 'Pizza').
	self waitForWriteOperation.

	retrieved := self repository selectOne: VOTestPet where: [ :each | each name = 'Pizza' ].
	self deny: retrieved isNil.
	self assert: retrieved class equals: VOTestCat. "object is still in cache with the good class."
	
	"object should not be a Pet but a Cat. Even if we retrieved if from the Pet class"
	self repository flushCache.
	retrieved := self repository selectOne: VOTestPet where: [ :each | each name = 'Pizza' ].
	self assert: retrieved class equals: VOTestCat. 