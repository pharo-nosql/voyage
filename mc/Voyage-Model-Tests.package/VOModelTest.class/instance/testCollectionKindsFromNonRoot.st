tests
testCollectionKindsFromNonRoot
	| classesInCollection |
	classesInCollection := VOTestCat voyageCollectionKinds.
	self assert: classesInCollection equals: { VOTestCat } asSet 