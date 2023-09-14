persistence
mongoValue 
	<mongoDescription>
	
	^ VOToManyDescription new
		attributeName: 'value';
		convertNullTo: [ Dictionary new ];
		accessor: (SRPluggableAccessor 
			read: [ :anObject | 
				anObject value associations 
					collect: [ :each | VOMongoKeyPair fromAssociation: each ] ]
			write: [ :anObject :value | (value collect: #asAssociation) asDictionary ]);
		yourself