external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://tinchodias/mongotalk:features-sdam/mc';
			loads: #( 'SDAM' ) ];
		import: 'MongoTalk'
