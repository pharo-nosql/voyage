tests
testSaveNested
	| pilot pet |

	pilot := VOTestPilot new name: 'Esteban'.
	pet := VOTestDog new name: 'Fido'.
	pilot pet: pet.
	self repository save: pilot.
	
	self repository reset.
		
	self assert: (self repository count: VOTestPilot) equals: 1.
	self assert: (self repository count: VOTestPet) equals: 1