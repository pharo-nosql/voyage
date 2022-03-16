external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://pharo-nosql/mongotalk:pharo10-ready/mc';
			loads: #( 'Client' ) ];
		import: 'MongoTalk'
