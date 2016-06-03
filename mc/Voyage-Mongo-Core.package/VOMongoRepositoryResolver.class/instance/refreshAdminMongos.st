private replication
refreshAdminMongos
	
	adminByMember ifNil: [
		adminByMember := Dictionary new ].

	"fill adminByMember (without opening yet)"
	replicaSetMembers do: [ :each |
		| host port |
		host := each first. 
		port := each second asInteger.

		adminByMember
			at: (':' join: each)
			ifAbsentPut: (Mongo host: host port: port) ]