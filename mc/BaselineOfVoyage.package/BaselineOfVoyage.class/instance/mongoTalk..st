external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://pharo-nosql/mongotalk:master/mc';
			loads: #( 'Client' ) ];
		import: 'MongoTalk'
