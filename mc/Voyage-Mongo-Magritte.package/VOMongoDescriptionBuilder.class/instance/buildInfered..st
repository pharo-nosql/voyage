private
buildInfered: aString
	^VOMongoToOneDescription new
		attributeName: aString;
		accessor: (self buildDirectAccessorFor: aString);
		yourself