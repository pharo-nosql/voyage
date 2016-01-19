tests
testSelectManyWithAllKeyword
	| pilot pilot2 pilot3 mongoQuery retrievedPilots |
	pilot := VOTestPilot new.
	pilot keywords add: 'Smalltalk'.
	pilot keywords add: 'Argentina'.
	
	pilot2 := VOTestPilot new.
	pilot2 keywords add: 'Smalltalk'.
	
	pilot3 := VOTestPilot new.

	self repository save: pilot.
	self repository save: pilot2.
	self repository save: pilot3.
	self repository cache flush.
	
	mongoQuery :=  Dictionary new
		at: 'keywords' put: (Dictionary new 
			at: '$all' put: #('Smalltalk' 'Argentina');
			yourself );
		yourself.
	
	"Because the Pets are kept in their own collection and not embedded."
	retrievedPilots := self repository selectMany: VOTestPilot where: mongoQuery.
	self assert: retrievedPilots size equals: 1.
	
	"We have to retrieve the pastPets of the Pilot first and then "