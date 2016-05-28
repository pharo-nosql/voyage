initialization
initializeDatabase: aString members: aCollection 
	self initialize.
	
	databaseName := aString.
	members := aCollection.
	cachedPoolByMember := Dictionary new.
	cachedAdminByMember := Dictionary new.
	self refreshedMembers.