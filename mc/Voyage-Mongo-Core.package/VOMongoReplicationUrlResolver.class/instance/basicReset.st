private
basicReset

	self lookupReplicaSetStatusIfFound: [ :status |
		"Lookup primary member"
		status members 
			detect: #isPrimary
			ifFound: [ :aMember |
				primaryMongoUrl := aMember mongoUrl.
				knownMongoUrls := (status members collect: #mongoUrl) asArray.
				resolver debugLog: 'replica set primary member found: ', primaryMongoUrl asString.
				^ self ]].

	primaryMongoUrl := repository mongoUrls first.
	knownMongoUrls := repository mongoUrls.
	resolver debugLog: 'replica set primary *not* found'.