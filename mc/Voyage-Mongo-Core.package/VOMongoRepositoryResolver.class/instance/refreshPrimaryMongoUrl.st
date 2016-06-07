private replication
refreshPrimaryMongoUrl

	| status |
	self debugLog: 'get replica set status'.

	[ 	status := self withAvailableAdminMongo: [ :mongo | mongo replicaSetStatus ].
		
		"Get current primary member"	
		status members 
			detect: #isPrimary
			ifFound: [ :aMember |
				self debugLog: 'replica set primary member found'.

				"Success with replica set configuration"
				primaryMongoUrl := (aMember host, ':', aMember port asString) asMongoUrl.
				allMongoUrls := (status members collect: [ :each | 
					(each host, ':', each port asString) asMongoUrl ]) asArray.
				^ self 

		]] on: VOMongoError do: [:error |
			self debugLog: error.
			"error isNotRunningWithReplSet ifFalse: [ error signal ]"].

	self debugLog: 'replica set primary not found, then use first manually set member'.
	primaryMongoUrl := repository members first.
	allMongoUrls := repository members.
