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
			jsonName: VOJSONSerializer fieldReference;
			accessor: #name;
			yourself)