initialization
initialize 
	super initialize.

	"Initially all known members are the ones configured in repository"
	replicaSetMembers := repository members.
	self refreshAdminMongos.	

	self reset.
