instance creation
key: keyObject value: valueObject
	^(self classFor: valueObject) basicNew 
		initializeKey: keyObject value: valueObject;
		yourself