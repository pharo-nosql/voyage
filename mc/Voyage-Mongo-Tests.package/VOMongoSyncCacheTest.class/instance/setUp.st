running
setUp
	super setUp.

	repository := VOMongoRepository 
		host:  VOMongoRepository defaultHost 
		database: 'test_issue_187'.

	1 to: 1000 do: [:index | 
		repository save: (VOTestPilot new 
			name: 'Esteban ', 
			index asString) ].
	