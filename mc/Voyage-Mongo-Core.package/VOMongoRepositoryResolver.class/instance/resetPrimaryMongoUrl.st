private replication
resetPrimaryMongoUrl

	self lookupReplicaSetStatusIfFound: [ :status |
		"Lookup primary member"
		status members 
			detect: #isPrimary
			ifFound: [ :aMember |
				primaryMongoUrl := aMember mongoUrl.
				allMongoUrls := (status members collect: #mongoUrl) asArray.
				self debugLog: 'replica set primary member found'.
				^ self ]].

	primaryMongoUrl := repository members first.
	allMongoUrls := repository members.
	self debugLog: 'replica set primary not found, then use first manually set member'.