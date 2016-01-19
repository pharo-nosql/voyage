persistence
mongoValue 
	<mongoDescription>
	
	^VOMongoToManyDescription new
		attributeName: 'value';
		convertNullTo: [ Dictionary new ];
		accessor: (MAPluggableAccessor 
			read: [ :anObject | 
				anObject value associations 
					collect: [ :each | VOMongoKeyPair fromAssociation: each ] ]
			write: [ :anObject :value | (value collect: #asAssociation) asDictionary ]);
		yourself