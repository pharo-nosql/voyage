voyage
descriptionCreationDate
	<voyageDescriptionPlatforms: #(unqlite arango ejdb)>
	
	^VOToOneDescription new
		attributeName: 'creationDate';
		accessor: (MAPluggableAccessor 
			read: [ :pilot | pilot creationDate asString ]
			write: [ :pilot :value |
				value ifNotNil: [ 
					pilot 
						instVarNamed: 'creationDate' 
						put: (DateAndTime fromString: value) ] ]);
		beLazy;
		yourself