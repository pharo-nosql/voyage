initialization
initialize 
	super initialize.
	self 
		collectionName: 'classes';
		kind: Class;
		addAll: ((Class allInstVarNames "copyWithout: #name") collect: [ :each | 
			VOTransientDescription new
				attributeName: each;
				yourself ]);
		add: (VOToOneDescription new 
			mongoName: VOMongoJSONSerializer fieldReference;
			accessor: #name;
			yourself)