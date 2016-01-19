voyage
descriptionPastPets
	<mongoDescription>
	^VOMongoToManyDescription new
		attributeName: 'pastPets';
		accessor: #pastPets;
		beLazy;
		yourself