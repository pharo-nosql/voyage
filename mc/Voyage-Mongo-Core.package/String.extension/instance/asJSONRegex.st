*Voyage-Mongo-Core
asJSONRegex
	^Dictionary new 
		at: '$regex' put: self;
		at: '$options' put: 'i';
		yourself