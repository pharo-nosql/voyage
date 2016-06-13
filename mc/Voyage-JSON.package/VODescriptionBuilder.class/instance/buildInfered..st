private
buildInfered: aString
	^VOToOneDescription new
		attributeName: aString;
		accessor: (self buildDirectAccessorFor: aString);
		yourself