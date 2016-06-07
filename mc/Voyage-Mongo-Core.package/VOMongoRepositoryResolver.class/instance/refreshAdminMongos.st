private replication
refreshAdminMongos
	
	adminMongoByUrl ifNil: [ adminMongoByUrl := Dictionary new ].

	"fill adminByMember (without opening yet)"
	allMongoUrls do: [ :each |
		adminMongoByUrl
			at: each
			ifAbsentPut: (Mongo host: each host port: each port) ]