external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://pharo-nosql/mongotalk:1.21/mc';
			loads: #( 'Client' ) ];
		import: 'MongoTalk'
