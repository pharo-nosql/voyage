private
buildInferedContainer: aClass
	^VOMongoContainer new 
		collectionName: (self collectionNameFor: aClass);
		yourself