private replication
refreshedMembers
	
	"pre-fill cachedAdminByMember (without opening yet)"
	replicaSetMembers do: [ :each |
		| host port |
		host := each first. 
		port := each second asInteger.

		adminByMember
			at: (':' join: each)
			ifAbsentPut: (Mongo host: host port: port) ]