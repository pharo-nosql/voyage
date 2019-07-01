tests
testCountWhere
	| esteban stef |
	esteban := VOTestPilot new name: 'Esteban'.
	stef := VOTestPilot new name: 'Stef'.
	self 
		assert: (self repository 
			count: VOTestPilot 
			where: [ :each | each name = 'Esteban' ]) 
		equals: 0.
	self repository save: esteban.
	self repository save: stef.
	self 
		assert: (self repository 
			count: VOTestPilot 
			where: [ :each | each name = 'Esteban' ]) 
		equals: 1.