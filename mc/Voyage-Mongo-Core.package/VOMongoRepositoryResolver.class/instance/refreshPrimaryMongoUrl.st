private replication
refreshPrimaryMongoUrl

	[ 	| status |
		status := self lookupReplicaSetStatus.
		
		"Lookup primary member"	
		status members 
			detect: #isPrimary
			ifFound: [ :aMember |
				self debugLog: 'replica set primary member found'.
				primaryMongoUrl := aMember mongoUrl.
				allMongoUrls := (status members collect: #mongoUrl) asArray.
				^ self 

		]] on: VOMongoError, MongoCommandError do: [:error | self debugLog: error ].

	self debugLog: 'replica set primary not found, then use first manually set member'.
	primaryMongoUrl := repository members first.
	allMongoUrls := repository members.
