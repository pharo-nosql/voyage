private
basicSelectOne
	self repository
		collectionAt: queryClass
		readingDo: [ :collection |
			(collection
				commandFind: where asMongoQuery
				limit: 0
				readConcern: nil)
				setFlagSlaveOk;
				do: [ :found | ^ found ].
			^ nil ]