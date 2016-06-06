*Voyage-Mongo-Core-Extensions
asJSONRegex
	^Dictionary new 
		at: '$regex' put: self;
		at: '$options' put: 'i';
		yourself