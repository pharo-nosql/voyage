accessing
reset

	self lookupReplicaSetStatusIfFound: [ :status |
		"Lookup primary member"
		status members 
			detect: #isPrimary
			ifFound: [ :aMember |
				primaryMongoUrl := aMember mongoUrl.
				allMongoUrls := (status members collect: #mongoUrl) asArray.
				resolver debugLog: 'replica set primary member found'.
				^ self ]].

	primaryMongoUrl := repository mongoUrls first.
	allMongoUrls := repository mongoUrls.
	resolver debugLog: 'replica set primary not found, then use first manually set member'.