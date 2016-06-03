private
refreshAdminMongos
	
	"pre-fill cachedAdminByMember (without opening yet)"
	members do: [ :each |
		| host port |
		host := each first. 
		port := each second asInteger.

		cachedAdminByMember
			at: (':' join: each)
			ifAbsentPut: (Mongo host: host port: port) ]