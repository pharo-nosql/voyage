external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://pharo-nosql/mongotalk:v2.1/mc';
			loads: #( 'Client' ) ];
		import: 'MongoTalk'
