as yet unclassified
versionFromSerialized: jsonDictionary
	
	^ jsonDictionary at: VOMongoJSONSerializer fieldVersion ifAbsent: [ 0 ].