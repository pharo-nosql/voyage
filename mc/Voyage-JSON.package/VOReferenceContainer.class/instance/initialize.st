initialization
initialize 
	super initialize.
	self 
		collectionName: 'classes';
		kind: Class;
		addAll: ((Class allInstVarNames "copyWithout: #name") collect: [ :each | 
			VOMongoTransientDescription new
				attributeName: each;
				yourself ]);
		add: (VOMongoToOneDescription new 
			mongoName: VOMongoJSONSerializer fieldReference;
			accessor: #name;
			yourself)