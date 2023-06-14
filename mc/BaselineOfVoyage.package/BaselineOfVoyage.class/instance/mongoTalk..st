external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://pharo-nosql/mongotalk:driver-v5/mc';
			loads: #( 'Client' ) ];
		import: 'MongoTalk'
