tests
testCollectionKindsFromRoot
	| classesInCollection |
	classesInCollection := VOTestPet voyageCollectionKinds.
	self assert: classesInCollection equals: { VOTestPet . VOTestCat . VOTestDog . VOTestDogEnsuringCurrentReferencesOnQueries } asSet 