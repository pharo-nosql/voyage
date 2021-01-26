external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://pharo-nosql/mongotalk:1.23/mc';
			loads: #( 'Client' ) ];
		import: 'MongoTalk'
