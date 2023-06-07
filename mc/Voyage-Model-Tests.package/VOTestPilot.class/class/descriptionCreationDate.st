voyage
descriptionCreationDate
	<voyageDescriptionPlatforms: #(unqlite arango ejdb)>
	
	^ VOToOneDescription new
		attributeName: 'creationDate';
		accessor: (SRPluggableAccessor 
			read: [ :pilot | pilot creationDate asString ]
			write: [ :pilot :value |
				value ifNotNil: [ 
					pilot 
						writeSlotNamed: 'creationDate' 
						value: (DateAndTime fromString: value) ] ]);
		beLazy;
		yourself