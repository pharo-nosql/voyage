tests
testSaveNestedCollection
	| pilot pet |

	pilot := VOTestPilot new name: 'Esteban'.
	pet := VOTestDog new name: 'Fido'.
	pilot pastPets: { pet }.
	self repository save: pilot.
	
	self repository reset. "Force to reload items"
 
	self assert: (self repository count: VOTestPilot) equals: 1.
	self assert: (self repository count: VOTestPet) equals: 1.
	self 
		assert: (self repository selectAll: VOTestPilot) anyOne pastPets size 
		equals: 1.
	self 
		assert: (self repository selectAll: VOTestPilot) anyOne pastPets anyOne 
		equals: (self repository selectAll: VOTestPet) anyOne.