tests
testRemove
	| person persons |
	person := DFPerson new description: (DFName new firstName: 'Don').

	self repository save: person.
	self waitForWriteOperation.

	persons := self repository selectAll: DFPerson.
	self assert: persons size equals: 1.
	
	self repository remove: person.
	self waitForWriteOperation.
	
	persons := self repository selectAll: DFPerson.
	self assert: persons size equals: 0.