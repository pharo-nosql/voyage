versions
versionFromSerialized: jsonDictionary
	
	^ jsonDictionary at: self fieldVersion ifAbsent: [ 0 ].