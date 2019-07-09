tests
testCollectionKindsFromRoot
	| classesInCollection |
	classesInCollection := VOTestPet voyageCollectionKinds.
	self assert: (classesInCollection includesAll: { VOTestPet . VOTestCat . VOTestDog }).
	self deny: (classesInCollection includesAny: { VOTestAlienCat . VOTestSpecialAlienCat })