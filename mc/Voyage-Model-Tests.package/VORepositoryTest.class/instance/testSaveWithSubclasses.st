tests
testSaveWithSubclasses
	" look at VOTestPet class >> descriptionContainer."
	self repository save: (VOTestDog new name: 'Rantanplan').
	self repository save: (VOTestDog new name: 'Medor').
	self repository save: (VOTestCat new name: 'Pizza').
	
 	self assert: (self repository selectAll: VOTestPet) size equals: 3.
	self assert: (self repository selectAll: VOTestDog) size equals: 2.
	self assert: (self repository selectAll: VOTestCat) size equals: 1